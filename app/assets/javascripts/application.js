// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).on('turbolinks:load', function(){
  // Flash button fade out

  $('.alert').delay(1000).fadeOut(4000);

  // Home page button animations

  $('#button1').on('click', function() {
    $('#button2').addClass('animateToRight');
    $('#button3').addClass('animateToLeft');
    $('#button1').addClass('hide');
    return false;
  });

  // Stripe
  var proForm = $('#pro_form');
  var submitBtn = $('#form-submit-btn');
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'));

  submitBtn.click(function(event){
    event.preventDefault();
    var ccNum = $('#card_number').val(),
        cvcNum = $('#card_code').val(),
        expMonth = $('#card_month').val(),
        expYear = $('#card_year').val();
    Stripe.createToken({
      number: ccNum,
      cvc: cvcNum,
      exp_month: expMonth,
      exp_year: expYear
    }, stripeResponseHandler);
  });
});
