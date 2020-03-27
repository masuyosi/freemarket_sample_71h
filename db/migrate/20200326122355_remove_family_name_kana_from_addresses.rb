class RemoveFamilyNameKanaFromAddresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :addresses, :family_name_kana, :string
  end
end
