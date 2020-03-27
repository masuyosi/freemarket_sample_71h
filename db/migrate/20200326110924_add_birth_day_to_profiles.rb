class AddBirthDayToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :birth_day, :string
  end
end
