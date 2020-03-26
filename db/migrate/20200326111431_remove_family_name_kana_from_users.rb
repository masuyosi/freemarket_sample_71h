class RemoveFamilyNameKanaFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :family_name_kana, :string
  end
end
