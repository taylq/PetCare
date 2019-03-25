//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require bootstrap
//= require owl.carousel.min
//= require moment.min
//= require bootstrap-datetimepicker.min
//= require theme
//= require i18n
//= require i18n.js
//= require moment
//= require fullcalendar
//= require scheduler
//= require i18n/translations
//= require activestorage
//= require custom
//= require_tree ./channels
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
(function () {
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
})();
$(document).ready(function () {
  $(document).on('change', '.btn-file :file', function () {
    var input = $(this),
      label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
    input.trigger('fileselect', [label]);
  });

  $('.btn-file :file').on('fileselect', function (event, label) {

    var input = $(this).parents('.input-group').find(':text'),
      log = label;

    if (input.length) {
      input.val(log);
    } else {
      if (log) alert(log);
    }

  });
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {
        $('#img-upload').attr('src', e.target.result);
      }

      reader.readAsDataURL(input.files[0]);
    }
  }

  $("#imgInp").change(function () {
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
      resourceLabelText: "Bác sĩ",
      resources: '/doctors',
      events: '/bookings',
      // dayClick: function(info) {
      //   alert('Clicked on: '+ new Date(info.time()).getUTCHours() + ':' + new Date(info.time()).getUTCMinutes());
      // },
      select: function(start, end, listenerId, childrenByUid, resourceRowHash) {
        console.log(start, end, resourceRowHash);
          $.getScript('/bookings/new?start=' + start + "&end=" + end + "&doctor_id=" + resourceRowHash.id, function () {});
          calendar.fullCalendar('unselect');
      },

      eventDrop: function(event, delta, revertFunc) {
          event_data = {
              event: {
                  id: event.id,
                  start: event.start.format(),
                  end: event.end.format()
              }
          };
          $.ajax({
              url: event.update_url,
              data: event_data,
              type: 'PATCH'
          });
      },

      eventClick: function(event, jsEvent, view) {
          $.getScript(event.edit_url, function() {});
      }
    });
  })
};
$(document).ready(function () {
  initialize_calendar();
});

