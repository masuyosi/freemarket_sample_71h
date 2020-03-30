class AddProfilesdetailToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :first_name_kana, :string
    add_column :profiles, :birth_year, :integer
    add_column :profiles, :birth_month, :integer
    add_column :profiles, :birth_day, :integer
  end
end
