class Event < ApplicationRecord
 belongs_to :coordinator        # Defining Association
 validates :name, presence: true                         # name attribute validation
 validates :description, presence: true            # description attribute validation

 has_many_attached :images        # Defining activestorage with a namespace

 def small(input)                                     # Method that returns the image
   self.images[input].variant(resize: "300x300").processed           # Resizing the image and return it
 end
end
