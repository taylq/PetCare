json.array! @events do |event|
  # binding.pry
  json.resourceId event.nurse_id
  # json.extract! booking, :id
  # json.title event.doctor.name
  json.start event.start_date
  json.end event.end_date
  json.color '#42bc00'
  json.className 'fc-event1'
end
