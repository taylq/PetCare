json.array! @doctors do |doctor|
  # binding.pry
  json.id doctor.id
  json.title doctor.name
  end