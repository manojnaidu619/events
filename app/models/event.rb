class Event < ApplicationRecord
 belongs_to :coordinator

 # for Image Upload
 has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ""
 validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
