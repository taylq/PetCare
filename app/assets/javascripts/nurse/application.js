//= require jquery
//= require admin/popper.min
//= require admin/bootstrap.min
//= require admin/jquery.dataTables.min
//= require admin/dataTables.bootstrap4.min
//= require admin/jquery.slimscroll
//= require admin/select2.min
//= require admin/moment.min
//= require admin/bootstrap-datetimepicker.min
//= require admin/Chart.bundle
//= require admin/app
//= require rails-ujs
//= require activestorage
//= require moment
//= require fullcalendar
//= require fullcalendar/locale-all
//= require scheduler
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
var initialize_calendar;
initialize_calendar = function () {
  $('#calendar').each(function () {
    var calendar = $(this);
    calendar.fullCalendar({
      schedulerLicenseKey: 'GPL-My-Project-Is-Open-Source',
      selectable: true,
      selectHelper: true,
      timeZone: 'Hanoi',
      editable: true,
      eventLimit: true,
      aspectRatio: 3,
      slotLabelFormat: ['H:mm'],
      minTime: "07:00",
      maxTime: "22:00",
      header: {
        left: "today prev,next",
        center: "title",
        right: "timelineDay"
      },
      nowIndicator: true,
      defaultView: "timelineDay",
      // resourceLabelText: "Bác sĩ",
      // resources: '/doctors',
      eventSources: ['/nurse/bookings', '/nurse/bookings/events'],
      // eventReceive: function (event, view) {
      //     var resourceId = event.resourceId;
      // },
      //     dayClick: function(date, jsEvent, view, resourceObj) {
      //
      //         alert('Date: ' + date.format());
      //         alert('Resource ID: ' + resourceObj.id);
      //
      //     },
      select: function (start, end, jsEvent, view, resourceObj) {
        // debugger;
        console.log(resourceObj.id);
        $.getScript('/bookings/new?start=' + start + "&end=" + end + "&nurse_id=" + resourceObj.id, function () {});
        calendar.fullCalendar('unselect');
      },

      eventClick: function (event, jsEvent, view) {
        console.log(event);
        $.getScript(event.edit_url, function () {});
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
