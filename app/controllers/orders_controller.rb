class OrdersController < ApplicationController
  before_action :set_order, only:[:show,:create,:purchase]

  def show
    if @item.seller_id == current_user.id
      redirect_to root_path
    end
    unless @item.buyer_id == nil
      redirect_to root_path
    end
  end

  def create
    @item.update( buyer_id: current_user.id)
  end
  
  require 'payjp'
  def purchase
    if @item.update( buyer_id: current_user.id)
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      Payjp::Charge.create(currency: 'jpy', amount:@item.price, card: params['payjp-token'])
      redirect_to root_path, notice: "支払いが完了しました"
    else 
      flash[:notice] = "支払いが失敗しました"
    end
  end

  private

  def set_order
    @item = Item.find(params[:id])
  end
end