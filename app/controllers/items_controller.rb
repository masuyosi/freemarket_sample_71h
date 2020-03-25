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
  end

  def edit
  end

  def update
  end


  require 'payjp'

  def purchase
    Payjp.api_key = sk_test_19e85988f3b7d2e500b71abf
    Payjp::Charge.create(
      amount: 809, # 決済する値段
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
    )
  end
  
  def destroy

  end
end
