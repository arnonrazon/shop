json.array!(@items) do |item|
  json.extract! item, :id, :title, :price, :image_url
  json.url item_url(item, format: :json)
end
