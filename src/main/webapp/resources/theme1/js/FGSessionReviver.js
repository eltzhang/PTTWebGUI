/**
 * Fieldglass Session Reviver Utility
 * 
 * @author <a href="mailto:smonis@fieldglass.com">Sydney M</a>
 * 
 * <pre>
 * Displays a Modal with a countdown timer X number of seconds before the user's
 * session is about to timeout. Also, can auto-reset the session timer if any activity is being performed on the page
 * 
 * Default Values : 
 *      Warning Period Before Timeout = 90 Seconds
 *      Session Timeout Period = 20 minutes
 *      Auto reset Session on Form Element Changes = false
 * 
 * Can be enabled on any page by including this file and calling :
 * 
 * new FG.SessionReviver({
 *          warningPeriodBeforeTimeoutSeconds: 100,
 *          serverSessionTimeoutSeconds: _session_timeout,
 *          autoReviveSessionOnFormChange: true,
 *          autoExtendSessionOnUserInteractionInterval: 150
 * }).enable(); - Modal displays 100 seconds before timeout. However, if the user interacts with the page by making
 *                  any changes to the form elements, the ajax call is made every 150 seconds to keep the session alive.
 * 
 * OR 
 * 
 * new FG.SessionReviver().enable(); - Enabled with Default Values
 * 
 * </pre>
 */
(function() {
    
    var isIE7OR8 = navigator.appVersion.indexOf("MSIE 7.") > -1 || navigator.appVersion.indexOf("MSIE 8.") > -1;

    if (typeof FG === 'undefined') {
        FG = {};
    } else if ('SessionReviver' in FG) {
        return;
    }

    var REVIVE_SESSION = 'reviveSession';
    var END_SESSION = 'endSession';

    FG.SessionReviver = function(options) {

        if ('warningPeriodBeforeTimeoutSeconds' in options) {
            this.warningPeriodBeforeTimeoutSeconds = options.warningPeriodBeforeTimeoutSeconds;
        } else {
            this.warningPeriodBeforeTimeoutSeconds = 90;
        }

        if ('serverSessionTimeoutSeconds' in options) {
            this.timeoutIntervalMillis = (options.serverSessionTimeoutSeconds
             - this.warningPeriodBeforeTimeoutSeconds) * 1000;
        } else {
            this.timeoutIntervalMillis = ((20 * 60) - this.warningPeriodBeforeTimeoutSeconds) * 1000;
        }

        if ('autoReviveSessionOnFormChange' in options && options.autoReviveSessionOnFormChange == true) {

            if ('autoExtendSessionOnUserInteractionInterval' in options) {
                this.autoExtendSessionOnUserInteractionInterval = options.autoExtendSessionOnUserInteractionInterval * 1000;
            } else {
                this.autoExtendSessionOnUserInteractionInterval = 179 * 1000 // 2 minutes & 59 seconds
            }

            this.autoReviveSessionOnFormChange = options.autoReviveSessionOnFormChange;
            this.hasUserInteractedFlag = false;
        }
        
        if('csrfTokenName' in options) {
            this.csrfTokenName = options.csrfTokenName;
        } else {
            this.csrfTokenName = 'sgjy';
        }
        
        if('csrfTokenValue' in options) {
            this.csrfTokenValue = options.csrfTokenValue;
        } else {
            this.csrfTokenValue = '';
        }
        
        // Instantiate the Broadcaster
        if(!isIE7OR8) {
            this.broadcaster = new FG.Broadcaster();
            var __this__ = this;
            this.broadcaster.listen(REVIVE_SESSION, function(data) {
                __this__.hideModal();
                __this__.triggerSessionTimeoutModal(true);
            });
            
            this.broadcaster.listen(END_SESSION, function() {
                __this__.logout();
            });
        }
    };

    FG.SessionReviver.prototype.triggerSessionTimeoutModal = function(ignoreBroadcast) {
        var __this__ = this;
        clearTimeout(this.sessionTimeoutVar);

        if (typeof ignoreBroadcast === 'undefined' && !isIE7OR8) {
            // Resets the Session timeout modal on all tabs/windows
            this.broadcaster.broadcast(REVIVE_SESSION);
        }

        this.sessionTimeoutVar = setTimeout(function() {
            __this__.showTimeoutModal();
        }, this.timeoutIntervalMillis);
    };

    // Display the Modal with the Countdown timer & Confirmation button
    FG.SessionReviver.prototype.showTimeoutModal = function() {
        var __this__ = this;
        var sessionReviverCurtain = "<div id='sessionReviverCurtain'><div class='body'>&nbsp;</div></div>";
        var modal = '<div id="sessionReviverModal" class="hidden sessionReviverModal">';
        modal += '<div class="body dialogPanel">';
        modal += '<div class="sessionReviverHeader clearfix">';
        modal += '<h2 id="sessionReviverModalTitle" class="fl">';
        modal += getMessage('label.sessionTimeoutWarning');
        modal += '</h2>';
        modal += '<div class="fr">';
        modal += '<a href="#" class="closeSessionExtend spritepan cross" title="Close"></a>';
        modal += '</div>';
        modal += '</div>';
        modal += '<div class="sessionReviverBody clearfix">';
        modal += '<label id="sessionTimeoutText">' + getMessage('label.sessionTimeoutWarningMessage')
                + ' <span id="sessionTimer">' + this.warningPeriodBeforeTimeoutSeconds + '</span> '
                + getMessage('label.secondsText') + '</label>'
        modal += '<div style="height:25px;"></div>';
        modal += '<div class="actionButtonsArea">';
        modal += '<input type="button" id="sessionExtendButton" class="formRightButton" value="'
                + getMessage('label.keepWorking') + '" />';
        modal += '<input type="button" id="logoutButton" class="formRightButton" value="' + getMessage('label.logout') + '"/>';
        modal += '</div>';
        modal += '</div>';
        modal += '</div>';
        modal += '</div>';

        var secondsRemaining = this.warningPeriodBeforeTimeoutSeconds - 1;
        this.timeoutId = setInterval(function() {
            $('#sessionTimer').text(secondsRemaining);
            --secondsRemaining;
            if (secondsRemaining < 0) {
                clearInterval(__this__.timeoutId);
                window.location.assign('/logout.jsp');
            }
            // Runs every 950 milliseconds.
            // The remaining 50 milliseconds per second account for the approximate time lost in processing. 
        }, 950);

        // Should happen just once
        if ($('#sessionReviverCurtain').length == 0 && $('#sessionReviverModal').length == 0) {
            $('body').append(sessionReviverCurtain).append(modal);
        } else {
            $('#sessionTimer').text(this.warningPeriodBeforeTimeoutSeconds);
        }

        $('#sessionReviverCurtain').show();
        $('#sessionReviverModal').show();
        if (isIE) {
            $("#pdfDiv").css('visibility', 'hidden');
        }

        $('#sessionExtendButton').off('click').on('click', function() {
            __this__.hideModal();
            __this__.extendSession();
        });

        $('.closeSessionExtend').off('click').on('click', this.hideModal);
        
        $('#logoutButton').off('click').on('click', function() {
            if(!isIE7OR8) {
                __this__.broadcaster.broadcast(END_SESSION);
            }
            __this__.logout();
        });

    };

    FG.SessionReviver.prototype.hideModal = function() {
        $('#sessionReviverCurtain').hide();
        $('#sessionReviverModal').hide();
        if (isIE) {
            $("#pdfDiv").css('visibility', '');
        }
        clearInterval(this.timeoutId);
    }
    
    FG.SessionReviver.prototype.logout = function() {
        window.location.assign('/logout.jsp?' + this.csrfTokenName + '=' + this.csrfTokenValue);
    }

    // Reset the session Timeout Period
    FG.SessionReviver.prototype.extendSession = function() {
        $.post('/session_reviver.do');
        $('.closeSessionExtend').trigger('click');
        this.triggerSessionTimeoutModal();
    };

    FG.SessionReviver.prototype.enable = function() {
        if (typeof this.timeoutIntervalMillis != 'undefined') {
            this.triggerSessionTimeoutModal();
        } else {
            // Session Timeout Period not Set
            return;
        }
        /*
         * If enabled, an ajax call will be made every 2 minutes & 59 seconds to
         * revive the session, provided that the user has made some changes to
         * any form elements on the page
         */
        if (this.autoReviveSessionOnFormChange) {
            var __this__ = this;
            $(document).on('change', function() {
                __this__.hasUserInteractedFlag = true;
            });

            setInterval(function() {
                if (__this__.hasUserInteractedFlag) {
                    __this__.extendSession();
                    __this__.hasUserInteractedFlag = false;
                }
            }, this.autoExtendSessionOnUserInteractionInterval);
        }
    }

})();