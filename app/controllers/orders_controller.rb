class OrdersController < ApplicationController
  def new
  end

  def create
    @item= Item.find(params[:id])
    @item.update( buyer_id: current_user.id)
  end
end


 

  # -if items.buyer_id.present? 
  #   .items-box_photo__sold
  #     .items-box_photo__sold__inner
  #       SOLD