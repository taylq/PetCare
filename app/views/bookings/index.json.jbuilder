#
# json.array! @events do |event|
#   # binding.pry
#   json.resourceId event.doctor_id
#   # json.extract! booking, :id
#   json.title event.doctor.name
#   json.start event.start_date
#   json.end event.end_date
# end

# event.bookings.each do |booking|
#     json.start booking.start_time
#     json.end booking.end_time
#   end

  json.array! @bookings do |booking|
    # binding.pry
    json.resourceId User.find_by_id(Event.find_by_id(booking.event_id).doctor_id).id
    # json.extract! booking, :id
    json.user_id booking.user_id
    json.start booking.start_time
    # json.end "Tue Mar 27 2019 09:00:00 GMT+0000"
    json.end booking.end_time
    if booking.user_id == current_user.id
      json.color 'orange'
    else
      json.color 'red'
    end
    json.className 'fc-event2'
    json.update_url booking_path(booking, method: :patch)
    json.edit_url edit_booking_path(booking)
    # json.real_end booking.end_date.strftime("%d/%m/%Y %H:%M")
  end
