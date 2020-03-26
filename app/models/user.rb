class User < ApplicationRecord
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :password,    length: { minimum: 7 }   
   
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  has_many :orders, dependent: :destroy
  has_one :profile 
  has_one :address
  accepts_nested_attributes_for :address, :profile 
            
end
