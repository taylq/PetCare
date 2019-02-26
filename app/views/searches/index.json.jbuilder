json.items do
  json.array!(@items) do|item|
    json.pet_type item.pet_type
    json.name item.name
    json.symptom item.symptom
    json.url desease_path(item)
  end
end
