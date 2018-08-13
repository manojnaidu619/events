class Event < ApplicationRecord
 belongs_to :coordinator        # Defining Association
 validates :name, presence: true                         # name attribute validation
 validates :description, presence: true            # description attribute validation

 has_one_attached :image        # Defining activestorage with a namespace

 def small_image                                      # Method that returns the image
   self.image.variant(resize: "300x300")           # Resizing the image and return it
 end
end
