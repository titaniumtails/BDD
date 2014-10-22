json.array!(@thing_items) do |thing_item|
  json.extract! thing_item, :id, :name
  json.url thing_item_url(thing_item, format: :json)
end
