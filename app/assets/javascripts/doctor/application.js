//= require jquery
//= require jquery_ujs
//= require admin/popper.min
//= require admin/bootstrap.min
//= require admin/jquery.slimscroll
//= require admin/select2.min
//= require admin/moment.min
//= require admin/bootstrap-datetimepicker.min
//= require admin/jquery.dataTables.min
//= require admin/dataTables.bootstrap4.min
//= require admin/Chart.bundle
//= require admin/app
//= require activestorage
//= require moment
//= require fullcalendar
//= require fullcalendar/locale-all
//= require_tree ../channels
//= require toastr

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

var initialize_calendar;
initialize_calendar = function () {
    $('#calendar').each(function () {
        var calendar = $(this);
        calendar.fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month'
            },
            selectable: true,
            selectHelper: true,
            editable: true,
            eventLimit: true,
            events: '/doctor/events',

            eventRender: function (event, element) {
                element.find(".fc-title").remove();
                element.find(".fc-time").remove();
                var new_description =
                    event.start.format("DD/MM/YYYY HH:mm") + ' - '
                    + event.real_end

                ;
                element.append(new_description).css("color", "white");
            },

            eventClick: function (event, jsEvent, view) {
                $.getScript(event.edit_url, function () { });
            }
        });
    })
};
$(document).ready(function () {
    initialize_calendar();
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