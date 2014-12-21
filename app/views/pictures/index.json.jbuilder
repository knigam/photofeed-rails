json.array!(@pictures) do |picture|
  json.extract! picture, :id, :text
  json.thumb_url picture.image.url(:thumb)
  json.url picture_url(picture, format: :json)
end
