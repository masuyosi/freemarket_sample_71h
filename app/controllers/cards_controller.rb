class CardsController < ApplicationController

  require "payjp"


  def index
    card = current_user.card
    redirect_to action: "show" unless card.blank?
  end

  def new 
    card = Card.where(user_id: current_user.id).first
    redirect_to action: "index" if card.present?
  end

  def create 
    Payjp.api_key = 'sk_test_19e85988f3b7d2e500b71abf'

    if params['payjp-token'].blank?
      redirect_to action: "new"
    else
      customer = Payjp::Customer.create(
        card: params['payjp-token'], 
        metadata: {user_id: current_user.id} 
      )
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to action: "show"
        flash[:notice] = 'クレジットカードの登録が完了しました'
      else
        redirect_to action: "create"
        flash[:alert] = 'クレジットカード登録に失敗しました'
      end
    end
  end

  def show
    card = current_user.card
    if card.blank?
      redirect_to action: "new" 
    else
      Payjp.api_key = "sk_test_19e85988f3b7d2e500b71abf"
      customer = Payjp::Customer.retrieve(card.customer_id)
      @customer_card = customer.cards.retrieve(card.card_id)
    end
  end

  def delete
    card = current_user.credit_card
    if card.blank?
      redirect_to action: "new"
    else
      Payjp.api_key = 'sk_test_19e85988f3b7d2e500b71abf'
      customer = Payjp::Customer.retrieve(card.customer_id)
      customer.delete
      card.delete
    end
  end
end
