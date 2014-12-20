json.array!(@pictures) do |picture|
  json.extract! picture, :id, :text
  json.url picture_url(picture, format: :json)
end
