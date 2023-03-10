class Book < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  
  def get_image
    (image.attached?) ? image: "no_image.png"
  end
end
