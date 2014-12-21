json.extract! @picture, :id, :text, :created_at, :updated_at
json.image_url @picture.image.url
