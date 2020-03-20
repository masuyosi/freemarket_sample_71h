class ItemsController < ApplicationController
  def index
    @items = Item.where("name LIKE ?", "%#{params[:name]}%")
  end

  def new
    @item = Item.new
  end

  def create
  end

  def show
    @item = Item.find(params[:id])
    @image = Image.find(params[:id])
    @images = Image.all
  end
end
