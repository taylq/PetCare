//= require jquery
//= require jquery_ujs
//= require admin/popper.min
//= require admin/bootstrap.min
//= require admin/jquery.dataTables.min
//= require admin/dataTables.bootstrap4.min
//= require admin/jquery.slimscroll
//= require admin/app
//= require admin/select2.min
//= require admin/moment.min
//= require admin/bootstrap-datetimepicker.min
//= require admin/Chart.bundle
//= require activestorage
//= require turbolinks
//= require toastr
//= require_tree ../channels

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
$(document).ready(function () {
    $("#form-role").change(function () {
        this.form.submit();
    });
    $(document).on('click', '.toggle-window', function (e) {
        e.preventDefault();
        var panel = $(this).parent().parent();
        var messages_list = panel.find('.messages-list');

        panel.find('.panel-body').toggle();
        panel.attr('class', 'panel panel-default');

        if (panel.find('.panel-body').is(':visible')) {
            var height = messages_list[0].scrollHeight;
            messages_list.scrollTop(height);
        }
    });
});
