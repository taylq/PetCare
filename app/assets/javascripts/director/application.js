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
//= require admin/Chart.bundle
//= require admin/app
//= require toastr
//= require moment
//= require fullcalendar
//= require fullcalendar/locale-all

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
initialize_calendar = function() {
    $('#calendar').each(function(){
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

            select: function(start, end) {
                $.getScript('/director/events/new', function() {});
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
$(document).ready(function(){

    initialize_calendar();
});