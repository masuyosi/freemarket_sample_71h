class RemoveFamilyNameFromAddresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :addresses, :Family_name, :string
  end
end
