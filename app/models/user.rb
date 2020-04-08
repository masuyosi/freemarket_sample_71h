class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:facebook, :google_oauth2]
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
  has_many :seller_ids, foreign_key: "seller_id", class_name: "Items"
  has_many :buyer_ids, foreign_key: "buyer_id", class_name: "Items"
  has_many :items, dependent: :destroy
  has_one :card
  has_many :likes, dependent: :destroy
  has_many :like_items, through: :likes, source: :item
  has_many :comments

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end

end
