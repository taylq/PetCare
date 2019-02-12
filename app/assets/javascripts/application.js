//= require jquery
//= require popper.min
//= require rails-ujs
//= require material-kit
//= require core/bootstrap-material-design.min
//= require imagesloaded.min
//= require jquery.isotope.min
//= require plugins/moment.min
//= require plugins/bootstrap-datetimepicker
//= require i18n
//= require i18n.js
//= require i18n/translations
//= require activestorage
//= require turbolinks
//= require main
//= require custom
$(document).click(function () {
  $('.checkbox2').change(function () {
    for (var i = 1; i <= $('#length').data('length'); i++) {
      if ($('#checkbox_check' + i).is(':checked')) {
        $('#data-form-prepend' + i).val('false');
      } else {
        $('#data-form-prepend' + i).val('true');
      }
    }
  });

  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function (e) {
        $('#imagePreview').css('background-image', 'url(' + e.target.result + ')');
        $('#imagePreview').hide();
        $('#imagePreview').fadeIn(650);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }
  $("#imageUpload").change(function () {
    readURL(this);
  });
});
