class Item < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :item_condition
  belongs_to_active_hash :postage_payer
  belongs_to_active_hash :preparation_day
  belongs_to_active_hash :prefecture
  has_one :order

  validates_associated :images
  validates :images, presence: true
  belongs_to :user, foreign_key: 'user_id'
  belongs_to :category
  
  def image_search
    @image = Image.find(params[:id])
  end
end
