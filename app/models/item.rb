class Item < ApplicationRecord
  has_many :images

  def image_search
    @image = Image.find(params[:id])
  end
end
