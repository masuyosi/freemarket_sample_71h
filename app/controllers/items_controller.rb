class ItemsController < ApplicationController
  def index
    @items = Item.where("name LIKE ?", "%#{params[:name]}%")

  end

  def new
    @item = Item.new
    @item.images.new
    # @item.build_brand
  end

  def create
    Item.create(item_params)
  end

  def show
    @item = Item.find(params[:id])
    @items = Item.all
  end
  
  private

  def item_params
    params.require(:item).permit(:name, :content, :price, :item_condition_id, :prefecture_id, :postage_payer_id, :preparation_day_id, images_attributes: [:src])
  end
end
