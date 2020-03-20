class ItemsController < ApplicationController
  def index
    @items = Item.where("name LIKE ?", "%#{params[:name]}%")
  end

  def show
  end
end
