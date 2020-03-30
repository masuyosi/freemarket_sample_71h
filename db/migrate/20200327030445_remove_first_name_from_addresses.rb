class RemoveFirstNameFromAddresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :addresses, :first_name, :string
  end
end
