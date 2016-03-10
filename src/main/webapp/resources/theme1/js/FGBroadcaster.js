/**
 * FG Broadcaster Utility
 * 
 * @author <a href="mailto:smonis@fieldglass.com">Sydney M</a>
 * @since July 2014
 * 
 * <pre>
 *  This utility was developed to support multi-tab or 
 *  multi-window communication and is used to broadcast any data
 *  to other Tabs or Windows on the same browser.
 *  
 *  The data needs to be a JS object or a string or nothing at all
 *  and can be sent or received only to pages within the same domain.
 *  
 *  
 *  Instantiation : 
 *      var broadcaster = new FG.Broadcaster();
 *  
 *  Listening/Monitoring :
 *      broadcaster.listen('eventName', callbackFunction);
 *  
 *  The callback function accepts one parameter, i.e an object
 *  with the following properties :
 *      value
 *      url
 *      
 *  Broadcasting :
 *      broadcaster.broadcast('eventName', data);
 * </pre>
 */

(function() {
    
    if(typeof FG === 'undefined') {
        FG = {};
    } else if('Broadcaster' in FG) {
        return;
    }
    
    var isIE = navigator.userAgent.indexOf("MSIE") != -1 || !!navigator.userAgent.match(/Trident.*rv[ :]*11\./)
    var UNIQUENESS_DELIMITER = ":@";
    /*
     * The below two variables replace actual null & empty values sent by the user.
     * The masking is done to avoid confusion when we need to detect when a value is deleted/removed
     * from localStorage. Since the 'newValue' property is either null(Chrome, FF, etc...) or empty(for IE)
     * when an item is removed from localStorage, we don't wish to confuse the removeItem() method of
     * localStorage with setItem()
     */
    var NULL_VALUE = "@NULL@";
    var EMPTY_VALUE = "@EMPTY@";

    FG.Broadcaster = function() {
        this.events = [];
        
        var execute = function(storageObject) {
            var key = storageObject.key;
            var pos = key.indexOf(UNIQUENESS_DELIMITER);
            if (pos < 0) {
                // Determine that the event was triggered by FGBroadcaster itself 
                return;
            }
            var value = storageObject.newValue;
            if (value === null || (value !== null && value.length === 0)) {
                // Ignore the event when a localStorage object is deleted
                return;
            }
            var eventName = key.substring(0, pos);
            if (eventName in this.events) {
                if (value === NULL_VALUE) {
                    value = null;
                }
                if(value === EMPTY_VALUE) {
                    value = '';
                }
                var data = {
                    value : value,
                    url : storageObject.url
                };
                
                var callback = this.events[eventName];
                if (typeof callback === 'function') {
                    callback.apply(undefined, [ data ]);
                }
            }
        }
        var _this = this;
        this.eventHandler = function(e) {
            execute.call(_this, e);
        };
        
        this.bindStorageEvent();
    }
    
    /**
     * Bind the storage event to the window object so that
     * the browser can start listening to any changes within
     * localStorage
     */
    FG.Broadcaster.prototype.bindStorageEvent = function() {
        if(window.addEventListener) {
            window.addEventListener('storage', this.eventHandler , false);
        } else {
            // For IE7 & 8
            document.attachEvent('onstorage', this.eventHandler , false);
        }
    }
    
    /**
     * Unbind the storage event from the window object so that
     * the browser can stop listening to any changes within
     * localStorage
     */
    FG.Broadcaster.prototype.unbindStorageEvent = function() {
        var _this = this;
        if(window.removeEventListener) {
            window.removeEventListener('storage',  this.eventHandler, false);
        } else {
            // For IE7 & 8
            document.detachEvent('onstorage',  this.eventHandler, false);
        }
    }

    /**
     * Used to broadcast an event to all other windows.
     */
    FG.Broadcaster.prototype.broadcast = function(eventName, message) {
        if (typeof eventName === 'undefined') {
            return;
        }

        eventName = eventName + UNIQUENESS_DELIMITER + new Date().getTime();
        if (typeof message === 'undefined' || message == null) {
            message = NULL_VALUE;
        } else if(message.length === 0) {
            message = EMPTY_VALUE;
        } else if (typeof message !== 'string') {
            message = JSON.stringify(message);
        }

        var _this = this;
        
        if(isIE) {
            /*
             * Unbinding and rebinding is required since IE has an unresolved bug
             * wherein the storage event is fired in the same tab/window that triggers it.
             */
            this.unbindStorageEvent();
            localStorage.setItem(eventName, message);
            setTimeout(function() {
                _this.bindStorageEvent();
            }, 100);
        } else {
            localStorage.setItem(eventName, message);
        }
        
        setTimeout(function() {
            localStorage.removeItem(eventName);
        }, 100);
    }

    /**
     * Is used to monitor any incoming events.
     * 
     * eventName - denotes the name of the event to bind the listener to
     * callback - callback function to be executed when the event is triggered
     */
    FG.Broadcaster.prototype.listen = function(eventName, callback) {
        this.events[eventName] = callback;
    }
})();