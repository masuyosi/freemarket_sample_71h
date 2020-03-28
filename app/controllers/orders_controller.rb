class OrdersController < ApplicationController
  def new
  end

  def create
    @item= Item.find(params[:id])
    @item.update( buyer_id: current_user.id)
  end
end