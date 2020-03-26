class RemovePhoneNumberFromAddresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :addresses, :Phone_number, :integer
  end
end
