class Picture < ActiveRecord::Base
    has_attached_file :image,
                      :styles => {
                        :thumb => "75x75>",
                        :small => "150x150>"
                      }
    validates_attachment_presence :image
    validates_attachment_content_type :image, :content_type => /\Aimage/
#   validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
end
