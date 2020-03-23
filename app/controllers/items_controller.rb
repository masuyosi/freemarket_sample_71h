class ItemsController < ApplicationController
  def index
    @items = Item.where("name LIKE ?", "%#{params[:name]}%")
  end

  def new
    # @item = Item.new
    # @image = Image.find(params[:id])
  end

  def create
    # @item = Item.create
    # redirect_to root_path
  end

  def show
    @item = Item.find(params[:id])
    @items = Item.all
    @image = Image.find(params[:id])
    @images = Image.all
  end
  
  # private

  # def item_params
  #   params.require(:item).permit(:name, :content, :price)
  # end

end
