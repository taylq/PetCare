  json.array! @events do |booking|
    json.resourceId booking.doctor_id
    json.extract! booking, :id
    json.title booking.doctor.name
    json.start booking.start_date
    # json.end "Tue Mar 27 2019 09:00:00 GMT+0000"
    json.end booking.end_date
    # json.real_end booking.end_date.strftime("%d/%m/%Y %H:%M")
  end
