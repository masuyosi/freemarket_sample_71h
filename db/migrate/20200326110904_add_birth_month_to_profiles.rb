class AddBirthMonthToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :birth_month, :string
  end
end
