class RemoveFirstNameKanaFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :first_name_kana, :string
  end
end
