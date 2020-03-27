class AddFirstNameKanaToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :first_name_kana, :string
  end
end
