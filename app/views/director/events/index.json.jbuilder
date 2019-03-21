json.array! @events do |event|
  date_format = '%Y-%m-%d'
  json.id event.id
  json.doctor_id event.doctor_id
  json.start event.start_date.strftime(date_format)
  json.end event.end_date.strftime(date_format)
  json.allDay true
  json.update_url director_event_path(event, method: :patch)
  json.edit_url edit_director_event_path(event)
end