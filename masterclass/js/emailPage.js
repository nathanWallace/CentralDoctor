$(document).ready(function() {
//Email stuff**************************************
var first = document.getElementById('yourName');
var gmc = document.getElementById('GMC');
var tel = document.getElementById('tel');
var email = document.getElementById('email');
var add1 = document.getElementById('add1');
var add2 = document.getElementById('add2');
var city = document.getElementById('city');
var postcode = document.getElementById('postcode');
var attentOnline = document.getElementById('attentOnline');
var Date2703 = document.getElementById('2703');
var Date0805 = document.getElementById('0805');
var Date1907 = document.getElementById('1907');
var Date1809 = document.getElementById('1809');

var nameOn = 1;
var gmcOn = 1;
var telOn = 1;
var emailOn = 1;
var add1On = 1;
var add2On = 1;
var cityOn = 1;
var postcodeOn = 1;


//empty on click
$(first).focus(function() { if (nameOn == 1) { $(this).attr('value', '').css('color', '#686868'); nameOn = 0; }; });
$(gmc).focus(function() { if (gmcOn == 1) { $(this).attr('value', '').css('color', '#686868'); gmcOn = 0; }; });
$(tel).focus(function() { if (telOn == 1) { $(this).attr('value', '').css('color', '#686868'); telOn = 0; }; });
$(email).focus(function() { if (emailOn == 1) { $(this).attr('value', '').css('color', '#686868'); emailOn = 0; }; });
$(add1).focus(function() { if (add1On == 1) { $(this).attr('value', '').css('color', '#686868'); add1On = 0; }; });
$(add2).focus(function() { if (add2On == 1) { $(this).attr('value', '').css('color', '#686868'); add2On = 0; }; });
$(city).focus(function() { if (cityOn == 1) { $(this).attr('value', '').css('color', '#686868'); cityOn = 0; }; });
$(postcode).focus(function() { if (postcodeOn == 1) { $(this).attr('value', '').css('color', '#686868'); postcodeOn = 0; }; });

//send email
$('#register').click(function() {

    //validation
        if (email.value == '' || email.value == 'Email') {
            $('#email').css('background-color', '#fac2c2');
        } else {
        if (add1.value == '' || add1.value == 'Address 1') {
            $('#add1').css('background-color', '#fac2c2');
        } else {
        if (city.value == '' || city.value == 'City') {
            $('#city').css('background-color', '#fac2c2');
        } else {
        if (postcode.value == '' || postcode.value == 'Post code') {
            $('#postcode').css('background-color', '#fac2c2');
        } else {
            $('.confirmation').html('Sending...');
            $('#formHolder').animate({ 'height': '0px' },1000).attr('class', 'ovHid');
            //Call server side function
            PageMethods.sendMail(first.value, tel.value, email.value, add1.value, add2.value, city.value,
             postcode.value, attentOnline.checked, gmc.value, Date2703.checked, Date0805.checked, Date1907.checked, Date1809.checked, sent, fail);
            
        }
    }
    }
    }
});

function sent() { $('.confirmation').html('Thank you for registering.'); }
function fail() { $('.confirmation').html('Thank you for registering.'); }

});