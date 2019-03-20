json.array! @events do |event|
  date_format = '%Y-%m-%d'
  json.id event.id
  json.title event.title
  json.start event.start_date.strftime(date_format)
  json.end event.end_date.strftime(date_format)
  json.color event.color unless event.color.blank?
  json.allDay true
  json.update_url event_path(event, method: :patch)
  json.edit_url edit_event_path(event)
end
