class Item < ApplicationRecord
  has_many :images
  has_one :order

  def image_search
    @image = Image.find(params[:id])
  end
end
