class Profile < ApplicationRecord
  # accsets_nested_attributes_for :address
  belongs_to :user
end
