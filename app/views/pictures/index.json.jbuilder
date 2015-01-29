json.array!(@pictures) do |picture|
  json.extract! picture, :id, :text
  json.original_url picture.image.url
  json.thumb_url picture.image.url(:thumb)
  json.url album_picture_url(:id => picture, format: :json)
end
