class ItemsController < ApplicationController
  def index
    @items = Item.where("name LIKE ?", "%#{params[:name]}%")
    @item = Item.all

  end

  def new
    @item = Item.new
    @item.images.new
  end

  def create
    @item = Item.create(item_params)
    if @item.save
      redirect_to root_path
      flash[:notice] = "出品しました"
    else
    end
  end

  def show
    @item = Item.find(params[:id])
    @items = Item.all
  end

  def edit

  end

  def update
  end

  def destroy
  end

  private
  def item_params
    params.require(:item).permit(:name, :content, :price, :item_condition_id,
    :prefecture_id, :postage_payer_id, :preparation_day_id, :brand, 
    :item_situation_id, images_attributes: [:src])
  end
end
