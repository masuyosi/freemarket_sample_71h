class ItemsController < ApplicationController

  before_action :move_to_index, except: [:index, :show, :new, :create]


  def index
    @items = Item.where("name LIKE ?", "%#{params[:name]}%")
    @items = Item.all.order("created_at DESC").limit(6)
    @images = Image.all.includes(:item)
    @parents = Category.all.order("id ASC").limit(13)
  end

  def new
    @item = Item.new
    @item.images.new
    @parents = Category.all.order("id ASC").limit(13)
    @category_parent_array = Category.where(ancestry: nil).pluck(:name)
  end

  def create
    @item = Item.create(item_params)
    if @item.update(seller_id: current_user.id)
      flash[:notice] = "出品しました"
      redirect_to root_path
    else
      flash[:notice] = "出品に失敗しました"
    end
  end

  def show
    @item = Item.find(params[:id])
    @items = Item.all
    @images = Image.all
    @category = Category.find((@item).category_id)
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    if @item.save
      flash[:notice] = "商品情報を更新しました"
      redirect_to root_path
    else
      flash[:notice] = "商品情報を更新に失敗しました"
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    flash[:notice] = "削除が完了しました"
    redirect_to root_path
  end

  def get_category_children
    #選択された親カテゴリーに紐付く子カテゴリーの配列を取得
    @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
  end

  def get_category_grandchildren
    #選択された子カテゴリーに紐付く孫カテゴリーの配列を取得
    @category_grandchildren = Category.find("#{params[:child_id]}").children
  end

  def brands_index
    @items = Item.all
  end

  def brands
    @items = Item.all
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :content, :price, :item_condition_id,
    :prefecture_id, :postage_payer_id, :preparation_day_id, :brand, :category_id,
    :item_situation_id, images_attributes: [:src, :id]).merge(user_id: current_user.id, seller_id: current_user.id)
  end
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
