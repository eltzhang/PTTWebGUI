(function() {
    
    if (typeof FG === 'undefined') {
        FG = {};
    } else if ('Tooltip' in FG) {
        return;
    }

    var isIE7OR8 = navigator.appVersion.indexOf("MSIE 7.") > -1 || navigator.appVersion.indexOf("MSIE 8.") > -1;
    // TODO : Add functionality where the user can add html within the tooltip
    // TODO : Add the brown css style which is used in certain places of the app
/**
 * Fieldglass Tooltip Utility
 * 
 * <p>Displays a Tooltip over the provided element/node on hover.</p>
 * 
 * @author <a href="mailto:smonis@fieldglass.com">Sydney M</a>
 * 
 * @code
 * <pre>
 *  var toolTip = new FG.Tooltip({
 *                      element: $('#addPositions'),
 *                      title: 'Test',
 *                      text: 'Some Text to be shown',
 *                      hoverDirection: 'right',
 *                      hoverAboveElement: true,
 *                      type: 'error',
 *                      width: 400,
 *                      useOffset: true,
 *                      useArrow: true,
 *                      callbackOnShow: callbackOnShow,
 *                      callbackOnHide: callbackOnHide
 *                  }).initialize();
 * </pre>
 * 
 * @param element - The DOM element over which the tooltip is to be displayed (Mandatory)
 * 
 * @param title - The title, will be shown first and in bold (Optional)
 * 
 * @param text - The actual text to be shown within the tooltip (Optional)
 * 
 * @param hoverDirection (left | right | center) - Displays the tooltip either left of the element or right (Optional | Default 'right')
 * 
 * @param hoverAboveElement (true | false) - Displays the tooltip either above or below the element (Optional | Default 'false')
 * 
 * @param type (error | warning | success | info) - Type of tooltip, either red(error), blue(info), green(success) or orange(warning) (Optional | Default info)
 *         Note : You can add your own type too if you need a differently colored toolTip. Just make sure to add the necessary classes in fieldglass_default.css.
 *                  e.g. for type 'yellow', add css to : #messageBox .yellowTooltip, #messageBox .yellowTooltip::after, #messageBox .yellowTooltip:before
 * 
 * @param width - The width of the tooltip (Optional | Default 350)
 * 
 * @param useOffset (true | false) - Either position the tooltip based on .offset() [From top left of page]
 *                                   or .position() [from top left of nearest parent element with position as 'relative'] (Optional | Default true)
 *                                 
 * @param useArrow (true | false) - Whether to use the upward arrow or not (Optional | Default - true)
 * 
 * @param callbackOnShow(FGTooltip) - Any function to be executed on hover (Optional) 
 * 
 * @param callbackOnHide(FGTooltip) - Any function to be executed on mouseOut (Optional) 
 * 
 * @returns boolean
 * 
 * <br />
 * Note : CSS has been written in fieldglass_default.css
 * Note : Arrows are not supported for the 'center' hoverDirection
 * 
 */
FG.Tooltip = function(options) {
    try{
    if(typeof options === 'undefined') {
        return false;
    }
    
    this.$element = options.element;
    this.title = typeof options.title === 'undefined' ? '' : options.title + ' : ';
    this.text = typeof options.text === 'undefined' ? '' : options.text;
    this.useOffset = options.useOffset;
    this.hoverDirection = typeof options.hoverDirection !== 'undefined' ? options.hoverDirection.toLowerCase() : 'right';
    this.hoverAboveElement = typeof options.hoverAboveElement !== 'undefined' && options.hoverAboveElement === true ? true : false; 
    this.type = typeof options.type !== 'undefined' ? options.type.toLowerCase() : 'info';
    this.width = isNaN(options.width) ? 350 : options.width;
    this.useArrow = typeof options.useArrow === 'undefined' ? true : options.useArrow;
    this.callbackOnShow = options.callbackOnShow;
    this.callbackOnHide = options.callbackOnHide;
    
    this.$hoverBox = null;
    this.showTooltip = null;
    this.hideTooltip = null;
    this.keyDownTooltip = null;
    
    this._CSS_CLASS_CONSTANT = 'Tooltip'; // e.g. .warningTooltip, .errorTooltip, etc...
    this._CSS_ARROW_CLASS_CONSTANT = 'Arrow' + this._CSS_CLASS_CONSTANT;
    this._ARROW_HEIGHT = this.useArrow ? 3 : 0;
    
    if(typeof this.$element === 'undefined') {
        return false;
    }
    
    if(isRtl()) {
        this.hoverDirection = 'left';
    } else if(this.hoverDirection != 'left' && this.hoverDirection != 'right' && this.hoverDirection != 'center') {
        this.hoverDirection = 'right';
    }
    
    if((isIE7OR8 && this.hoverDirection !== 'right') || this.hoverDirection == 'center') {
        /* 
         * Arrows are incompatible with IE8 & 'right' hoverDirection.
         * Also, arrows are incompatible with the 'center' hover direction
         * because the CSS props ::after & :before cannot be accessed using jQuery
         * since they aren't a part of the DOM.
         */
        this.useArrow = false;
    }
    
    this.calculateLeftRightPosition = function(hoverDirection, elementPosition, $element) {
        
        if(hoverDirection == 'left') {
            // Calculate position from right
            return $(document).width() - elementPosition.left - $element.outerWidth();
        } else if(hoverDirection == 'center') {
            return elementPosition.left + Math.round($element.outerWidth()/2) - Math.round(this.width/2);
        } else {
            return elementPosition.left;
        }
    };
    } catch (err){}
    return true;
}

/**
 * Attach the mouseOver and mouseOut event handlers to
 * the element and initialize the Tooltip
 */
FG.Tooltip.prototype.initialize = function() {
    var _this = this;
    
    this.showTooltip = function() {
        _this.cleanup();
        var $element = $(this);
        
        if(_this.useArrow) {
            _this.$hoverBox.addClass('withArrow');
            _this.$hoverBox = $('#messageBox');
        }
        
        if(_this.hoverAboveElement) {
            _this.$hoverBox.addClass('hoverAboveElement');
        } else {
            _this.$hoverBox.addClass('hoverBelowElement');
        }
        
        if(typeof _this.callbackOnShow === 'function') {
            _this.callbackOnShow.call(_this, _this); 
        }

        _this.$hoverBox.find('.messageBoxHeader .hoverTitle').html(_this.title);
        _this.$hoverBox.find('.messageBoxHeader .hoverText').html(_this.text);
        _this.$hoverBox.find('.messageBoxHeader').addClass(_this.type + _this._CSS_CLASS_CONSTANT);
        _this.$hoverBox.find('.messageBoxHeader').addClass(_this.hoverDirection + _this._CSS_ARROW_CLASS_CONSTANT);
        _this.$hoverBox.css('max-width', _this.width);
        
        _this.$hoverBox.show();
        
        var elementHeight = $element.height();
        
        if(_this.useOffset === false) {
            var elementPosition = $element.position();
        } else {
            var elementPosition = $element.offset();
        }
        
        var messageBoxCssObject = new Object();
        var BUFFER_HEIGHT = 10;
        if(_this.hoverAboveElement) {
            messageBoxCssObject['top'] = elementPosition.top - _this.$hoverBox.outerHeight() - _this._ARROW_HEIGHT - BUFFER_HEIGHT;
        } else {
            messageBoxCssObject['top'] = elementPosition.top + elementHeight + _this._ARROW_HEIGHT;
        }
        
        messageBoxCssObject[_this.hoverDirection == 'left' ? 'right' : 'left'] = 
                        _this.calculateLeftRightPosition(_this.hoverDirection, elementPosition, $element);
        _this.$hoverBox.css(messageBoxCssObject);
        
    }

    this.hideTooltip = function() {
        if(typeof _this.callbackOnHide === 'function') {
            _this.callbackOnHide.call(_this, _this);
        }

        _this.$hoverBox.hide();
    }

   /* this.keyDownTooltip = function(event) {
        var code = event.keyCode || event.which;
         if (code == '13') {
            if ($('#messageBox').length == 0) {
                this.showTooltip();
            } else{
                this.hideTooltip();
            }
         }
    }
*/

    if(this.$element.length > 1) {
        $.each(this.$element, function() {
            $(this).off('mouseover', _this.showTooltip).on('mouseover', _this.showTooltip);
            $(this).off('mouseout', _this.hideTooltip).on('mouseout', _this.hideTooltip);
            $(this).off('focus', _this.showTooltip).on('focus', _this.showTooltip);
            $(this).off('blur', _this.hideTooltip).on('blur', _this.hideTooltip);
        });
    } else {
        this.$element.off('mouseover', _this.showTooltip).on('mouseover', this.showTooltip);
        this.$element.off('mouseout', _this.hideTooltip).on('mouseout', this.hideTooltip);
      //  this.$element.off('keydown', _this.keyDownTooltip).on('mouseout', _this.keyDownTooltip);
             this.$element.off('focus', _this.showTooltip).on('focus', _this.showTooltip);
             this.$element.off('blur', _this.hideTooltip).on('blur', _this.hideTooltip);
    }
    return true;
}

/**
 * This function is necessary as it helps avoid any conflicts when multiple instances
 * of FG Tooltip are used on the same page.
 */
FG.Tooltip.prototype.cleanup = function() {
    $('#messageBox').remove();
    if($('#messageBox').length == 0) {
        var hoverBoxHtml = '<div id="messageBox" style="display: none;" role="tooltip" ><div class="messageBoxHeader">';
            hoverBoxHtml += '<span class="hoverTitle bold"></span>';
            hoverBoxHtml += '<span class="hoverText"></span>';
            hoverBoxHtml += '</div></div>';
        $('body').append(hoverBoxHtml);
    }
    this.$hoverBox = $('#messageBox');
}

/**
 * Disable all handles to the element attached by FGTooltip
 * and remove the $hoverBox from the DOM
 */
FG.Tooltip.prototype.dispose = function() {
    this.$element.off('mouseover', this.showTooltip);
    this.$element.off('mouseout', this.hideTooltip);
    this.$element.off('keydown', this.keyDownTooltip);
    this.$hoverBox = null;
}

})();
