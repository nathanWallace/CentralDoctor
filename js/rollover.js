$(document).ready(function() {

    $('.buttons').click(function() {
   
        var id = $(this).attr('id');
        var Openid = id + 'Menu';

        var height = $('#' + Openid).children('.ovHid');
        var openTo = $(height).html();

        if ($(this).attr('title') == 'Open') {
            $('.dropDown').attr({'class': 'ovNone'}); $('.buttons').attr({'title': 'Open'}); // close all first
            $(this).attr('title', 'Close'); $('#' + Openid).animate({ height: openTo }, // height has to be set unfortunatly otherwise no animation
                  900, 'easeOutBack').attr('class', 'dropDown');
        } else if ($(this).attr('title') == 'Close') {
         close(this, Openid);
        }
    });


    function close(id2, Openid) {

        $('#' + Openid).animate({ height: '0px' }, 800, 'swing'); $(id2).attr('title', 'Open');
        setTimeout(function() { $('#' + Openid).attr('class', 'ovNone'); }, 800); 
    }


});