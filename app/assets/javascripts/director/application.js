//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
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
//= require toastr
//= require moment
//= require fullcalendar
//= require fullcalendar/locale-all
var gStart = null, gEnd = null;
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
        right: 'month,agendaWeek,agendaDay'
      },
      selectable: true,
      selectHelper: true,
      editable: true,
      eventLimit: true,
      events: '/director/events',

      eventRender: function (event, element) {
        console.log(event);
        element.find(".fc-title").remove();
        element.find(".fc-time").remove();
        var new_description =
          event.start.format("DD/MM/YYYY HH:mm") + ' - '
          + event.real_end

          ;
        element.append(new_description).css("color", "white");
      },


      select: function (start, end) {
        console.log(start);
        gStart = start;
        gEnd = end;
        $.getScript('/director/events/new?start=' + start + "&end=" + end,
          function () { });
        calendar.fullCalendar('unselect');
      },

      eventDrop: function (event, delta, revertFunc) {
        console.log(event.id, event.start, event.end);
        event_data = {
          event: {
            start_date: event.start.format(),
            end_date: event.end.format(),
            doctor_id: event.doctor_id
          }
        };
        $.ajax({
          url: event.update_url,
          data: event_data,
          type: 'PATCH'
        });
      },

      eventClick: function (event, jsEvent, view) {
        $.getScript(event.edit_url, function () { });
      }
    });
  })
};
$(document).ready(function () {
  initialize_calendar();
});

