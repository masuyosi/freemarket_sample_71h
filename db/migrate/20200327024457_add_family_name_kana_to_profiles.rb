class AddFamilyNameKanaToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :family_name_kana, :string
  end
end
