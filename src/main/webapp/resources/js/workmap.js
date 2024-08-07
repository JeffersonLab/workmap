/**
 * Global String Enhancements
 */
if (typeof String.prototype.startsWith !== 'function') {
    String.prototype.startsWith = function (str) {
        return this.indexOf(str) === 0;
    };
}
if (!String.prototype.encodeXml) {
    String.prototype.encodeXml = function () {
        return this.replace(/&/g, '&amp;')
            .replace(/</g, '&lt;')
            .replace(/>/g, '&gt;')
            .replace(/'/g, '&apos;')
            .replace(/"/g, '&quot;');
    };
}
if (!String.prototype.decodeXml) {
    String.prototype.decodeXml = function () {
        return this.replace(/&quot;/g, '"')
            .replace(/&apos;/g, '\'')
            .replace(/&gt;/g, '>')
            .replace(/&lt;/g, '<')
            .replace(/&amp;/g, '&');
    };
}

var jlab = jlab || {};

jlab.su = function(url) {
    var i = document.createElement('iframe');
    i.style.display = 'none';
    i.onload = function() { i.parentNode.removeChild(i); window.location.href = url; };
    i.src = jlab.suLogoutUrl;
    document.body.appendChild(i);
};

jlab.iframeLogin = function(url) {
    var i = document.createElement('iframe');
    i.style.display = 'none';
    i.onload = function() { i.parentNode.removeChild(i); window.location.href = url; };
    i.src = jlab.iframeLoginUrl;
    document.body.appendChild(i);
};
$(document).on("click", "#login-link", function () {
    var url = $(this).attr("href");

    if(jlab.iframeLoginUrl !== '') {
        jlab.iframeLogin(url);

        return false;
    } /* else perform standard action (follow link) */
});
$(document).on("click", "#su-link", function() {
    var url = $(this).attr("href");

    jlab.su(url);

    return false;
});




$(document).ready(function() {
    $('.styled-button').button();

    $('.nav-datepicker').datepicker({
        dateFormat: 'yy-mm-dd',
        showOn: "button",
        buttonText: "Select Day",
        buttonImage: $('#contextPath').val() + '/resources/img/calendar.png',
        buttonImageOnly: true,
        onSelect: function(dateText, inst) {
            /*window.location.href=$('#contextPath').val() + '/view-work-map?yearMonthDay=' + dateText;*/
            window.location.href = String($('#contextPath').val() + '/' + dateText).encodeXml();
        },
        beforeShow: function() {
            $('#ui-datepicker-div').addClass('top-of-the-world');
        }
    });

    $('.copy-datepicker').datepicker({
        dateFormat: 'yy-mm-dd',
        onSelect: function(dateText, inst) {
            var days = new Array(7);
            days[0] = "Sun";
            days[1] = "Mon";
            days[2] = "Tue";
            days[3] = "Wed";
            days[4] = "Thu";
            days[5] = "Fri";
            days[6] = "Sat";
            var months = new Array(12);
            months[0] = "January";
            months[1] = "February";
            months[2] = "March";
            months[3] = "April";
            months[4] = "May";
            months[5] = "June";
            months[6] = "July";
            months[7] = "August";
            months[8] = "September";
            months[9] = "October";
            months[10] = "November";
            months[11] = "December";
            var selectedDate = $('.copy-datepicker').datepicker('getDate'),
                    verboseSelectedDateStr = days[selectedDate.getDay()] + ' ' + months[selectedDate.getMonth()] + ' ' + selectedDate.getDate() + ' ' + selectedDate.getFullYear();

            var ok = confirm('Are you sure you want to overwrite the ' + $("#pageLink").text() + ' work map with the work map from ' + verboseSelectedDateStr + '?');

            if (ok) {
                $('#copyFrom').val(dateText);
                $('#copyForm').submit();
            } else {
                $('#copyDialog').dialog('close');
            }
        }
    });

    $('.dialog').dialog({
        autoOpen: false,
        show: "blind",
        hide: "explode",
        modal: true,
        resizable: false
    });

    $("#copyDialog").dialog("option", "width", 475);

    $('#helpOpener').click(function() {
        $('#helpDialog').dialog('open');

        $('#helpCloser').blur();

        return false;
    });

    $('#helpCloser').click(function() {
        $('#helpDialog').dialog('close');
        return false;
    });

    $('#copyOpener').click(function() {
        $('#copyDialog').dialog('open');

        return false;
    });
});

$(document).on("keydown", ".copy-datepicker", function(e) {
    if (e.keyCode === 13) {
        window.console && console.log('preventing enter key on datepicker');
        e.stopPropagation();
        e.preventDefault();

        return false;
    }
});

(function($) {

    $.fn.autoGrowInput = function(o) {

        o = $.extend({
            maxWidth: 1000,
            minWidth: 0,
            comfortZone: 10
        }, o);

        this.filter('input:text').each(function() {

            var minWidth = o.minWidth || $(this).width(),
                    val = '',
                    input = $(this),
                    testSubject = $('<div/>').css({
                position: 'absolute',
                top: -9999,
                left: -9999,
                width: 'auto',
                fontSize: input.css('fontSize'),
                fontFamily: input.css('fontFamily'),
                fontWeight: input.css('fontWeight'),
                letterSpacing: input.css('letterSpacing'),
                whiteSpace: 'nowrap',
                textIndent: 0
            }),
            check = function() {

                if (val === (val = input.val())) {
                    return;
                }

                // Enter new content into testSubject
                var escaped = val.replace(/&/g, '&amp;').replace(/\s/g, '&nbsp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
                testSubject.html(escaped);

                // Calculate new width + whether to change
                var testerWidth = testSubject.width(),
                        newWidth = (testerWidth + o.comfortZone) >= minWidth ? testerWidth + o.comfortZone : minWidth,
                        currentWidth = input.width(),
                        isValidWidthChange = (newWidth < currentWidth && newWidth >= minWidth)
                        || (newWidth > minWidth && newWidth < o.maxWidth);

                // Animate width
                if (isValidWidthChange) {
                    input.width(newWidth);
                }

            };

            testSubject.insertAfter(input);
            //$(this).bind('keyup keydown blur update', check);
            //check();
            $(this).bind('keyup blur update', check).bind('keydown', function() {
                setTimeout(check);
            });
        });

        return this;

    };
})(jQuery);

$(document).on("click", ".edit-task-attribute-button", function() {
    $("#symbol-select").val($(this).closest('.area').find('.area-symbol').val());
    if ($(this).closest('.area').find('.area-upstairs').val() === 'Y') {
        $("#upstairs").attr("checked", true);
    } else {
        $("#upstairs").attr("checked", false);
    }
    $("#taskAttributeAreaName").val($(this).closest(".area").attr("data-area-name"));
    $("#taskAttributeDialog").dialog("open");
});

$(document).on("click", "#taskAttributeOkButton", function() {
    var $area = $(".area.".concat($("#taskAttributeAreaName").val()));
    $area.find(".area-upstairs").val($("#upstairs").is(":checked") ? 'Y' : 'N');
    if ($("#upstairs").is(":checked")) {
        $area.addClass("area-is-upstairs").removeClass("area-is-downstairs");
    } else {
        $area.addClass("area-is-downstairs").removeClass("area-is-upstairs");
    }
    $area.find(".area-symbol").val($("#symbol-select").val());
    var newSymbolClass = "no-symbol";
    if ($("#symbol-select").val() !== '') {
        var symbolClass = $("#type-".concat($("#symbol-select").val().replace(/\s/g, '_'))).val();
        newSymbolClass = symbolClass.concat(' symbol');
    }
    $area.find(".edit-task-attribute-button").removeClass().addClass("edit-task-attribute-button").addClass(newSymbolClass);
    $("#taskAttributeDialog").dialog("close");
});

$('input[type="text"]').autoGrowInput().trigger('keyup');

$(document).on("click", "#key1link", function() {
    $("#key2link").removeClass("selected-key");
    $("#key1link").addClass("selected-key");
    $("#key2").hide();
    $("#key1").show();
    return false;
});

$(document).on("click", "#key2link", function() {
    $("#key1link").removeClass("selected-key");
    $("#key2link").addClass("selected-key");
    $("#key1").hide();
    $("#key2").show();
    return false;
});