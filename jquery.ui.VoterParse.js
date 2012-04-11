/*
 * File:        jquery.ui.VoterParse.js
 * Version:     0.1
 * Description: Provide for the client side for the VoterParse interface
 * Author:      James Jones (www.stpetegreens.org)
 * Created:     04/11/2012
 * Language:    Javascript
 * License:     GPL v2
 * Project:     VoterParse
 * Contact:     jamjon3@stpetegreens.org
 *
 * Copyright 2011-2012 James Jones, all rights reserved.
 *
 * This source file is free software, under the GPL v2 license, as supplied with this software.
 *
 * This source file is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the license files for details.
 *
 * For details please refer to: http://www.stpetgreens.org
 */
(function ($, window, document) {
    $.widget("ui.VoterParse", {
        options: {
            
        },
        _create: function () {
            var self = this,
                o = self.options,
                el = self.element.addClass('ui-widget-content ui-corner-all'),
                uiVoterParse = $(self.uiVoterParse = $('<div />')).appendTo(el),
                baseVoterImportButton = $(self.baseVoterImportButton = $('<button />',{
                    'id': 'baseVoterImportButton'
                }));
            // Do creation stuff here
            
            window.AppView = Backbone.View.extend({
                el: $("body"),
                events: {
                    "click #baseVoterImportButton":  "showPrompt"
                },
                showPrompt: function () {
                    var confirm = prompt("Are you sure?");
                    // var friend_name = prompt("Who is your friend?");
                }
            });
            self.appView = new AppView;            
            self._trigger("initialize", null, uiVoterParse);

        },
        destroy: function() {
            this.element.next().remove();

            // $(window).unbind("resize");
        },
        _setOption: function(option, value) {
            $.Widget.prototype._setOption.apply( this, arguments );

            var self = this,
                el = self.element,
                o = self.options,
                uiVoterParse = el.next(),
                uiVoterParseHeight = uiVoterParse.outerHeight() - parseInt(uiVoterParse.css("paddingTop"),10) + parseInt(uiVoterParse.css("paddingBottom"),10);

            switch (option) {
                case "location":
                    uiVoterParse.css("top", (value === "top")?el.offset().top:el.offset().top + el.height() - uiVoterParseHeight);
                    break;
                case "color":
                    el.next().css("color", value);
                    break;
                case "backgroundColor":
                    el.next().css("backgroundColor", value);
                    break;
                case "serverName": case "serverPort": case "serviceRoot":
                    switch(option) {
                        case "serverName":
                            serviceBaseURL = "https://"+value+":"+o.serverPort+"/"+o.serviceRoot;
                            break;
                        case "serverPort":
                            serviceBaseURL = "https://"+o.serverName+":"+value+"/"+o.serviceRoot;
                            break;
                        case "serviceRoot":
                            serviceBaseURL = "https://"+o.serverName+":"+o.serverPort+"/"+value;
                            break;
                    }
                    break;
            }
        }
        
    });
})(jQuery);
