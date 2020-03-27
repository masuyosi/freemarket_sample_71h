class Address < ApplicationRecord

  
  validates :prefecture, :city, :house_number, :post_cord, presence: true
   

  belongs_to :user
end


