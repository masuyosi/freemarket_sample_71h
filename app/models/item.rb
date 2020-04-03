class Item < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :item_condition
  belongs_to_active_hash :postage_payer
  belongs_to_active_hash :preparation_day
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :item_situation
  has_one :order
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user

  validates_associated :images
  validates :images, presence: true

  belongs_to :category

  def self.search(search)
    if search
      Item.where(['name LIKE(?) OR content LIKE(?)', "%#{search}%", "%#{search}%"])
    else
      Item.all.order("created_at DESC").limit(6)
    end
  end
end
