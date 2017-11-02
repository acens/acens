// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery.1.11.min
//= require jquery-ui.min
//= require bootstrap.min
//= require owl.carousel.min
//= require jquery.stellar.min
//= require wow.min
//= require classie
//= require jquery.easing.min
//= require waypoints.min
//= require jquery.counterup.min
//= require typed
//= require smoothscroll
//= require theme
//= require bootstrap-notify
//= require custom
//= require rails-ujs
// require turbolinks //disabled
//= require lobipanel.min
//= require survey
//= require ckeditor/init
//= require social-share-button
// require_tree .

function readURLImage(preview, input) {

  if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function(e) {
      $(preview).attr('src', e.target.result);
      console.log('imprimindo...');
    }

    reader.readAsDataURL(input.files[0]);
  }
}

$(".img_field").change(function() {
  readURLImage(".img_preview", this);
});
$(".screenshots_field").change(function() {
  readURLImage(".screenshots_preview", this);
});

function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.profile_pic')
                    .attr('src', e.target.result)
                    .width(100)
                    .height(100);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
