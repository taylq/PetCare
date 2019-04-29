json.array! @events do |event|
  json.extract! event, :id
  json.doctor_id event.doctor_id
  json.doctor User.find_by_id event.doctor_id
  json.start event.start_date + 2.hours
  # json.end "Tue Mar 27 2019 09:00:00 GMT+0000"
  json.end event.end_date.end_of_day
  json.real_end event.end_date.strftime("%H:%M")
  json.update_url director_event_path(event, method: :patch)
  json.edit_url edit_director_event_path(event)
end
