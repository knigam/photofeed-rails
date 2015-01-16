class Picture < ActiveRecord::Base
    has_attached_file :image,
                      :styles => {
                        :original => "1000x1000>",
                        :thumb => "100x100>",
                        :small => "150x150>"
                      },
                      :path => ":rails_root/private/system/:class/:attachment/:id_partition/:style/:filename",
                      :url => '/:class/:id/image/:style'
    validates_attachment_presence :image
#   validates_attachment_content_type :image, :content_type => /\Aimage/
    validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
end
