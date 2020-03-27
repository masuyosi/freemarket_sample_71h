class RemoveFamilyNameFromAddresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :addresses, :family_name, :string
  end
end
