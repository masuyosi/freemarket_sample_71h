class RemoveFirstNameKanaFromAddresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :addresses, :first_name_kana, :string
  end
end
