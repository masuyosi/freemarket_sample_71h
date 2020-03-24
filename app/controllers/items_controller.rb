class ItemsController < ApplicationController
  def index
    @item = Item.all
  end

  def new
    @item = Item.new
  end

  def create
  end

  def show
    @item = Item.find(params[:id])
    @items = Item.all
    # @image = Image.find(params[:id])
    # @images = Image.all
  end

  def edit
  end

  def update
  end
  
  def destroy

  end
end
