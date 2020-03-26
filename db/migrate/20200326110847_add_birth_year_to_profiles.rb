class AddBirthYearToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :birth_year, :string
  end
end
