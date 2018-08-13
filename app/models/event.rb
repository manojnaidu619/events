class Event < ApplicationRecord
 belongs_to :coordinator        # Defining Association

 has_one_attached :image        # Defining activestorage with a namespace

 def small_image
   self.image.variant(resize: "300x300")
 end
end
