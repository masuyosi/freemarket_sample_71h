class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  
  has_many :orders, dependent: :destroy
  has_one :profile 
  has_one :address
  accepts_nested_attributes_for :address, :profile 
  has_many :seller_ids, foreign_key: "seller_id", class_name: "Items"
  has_many :buyer_idss, foreign_key: "buyer_id", class_name: "Items"
            
end