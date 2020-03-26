class Profile < ApplicationRecord
  validates :family_name, :first_name, :family_name_kana, :first_name_kana, :birth_year, :birth_month,  :birth_day,  presence: true

  # accsets_nested_attributes_for :address
  belongs_to :user
end
