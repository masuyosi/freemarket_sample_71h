class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :family_name,            null: false
      t.string :first_name,             null: false
      t.string :family_name_kana,      null: false
      t.string :first_name_kana,        null: false
      t.integer :birth_year,            null: false
      t.integer :birth_month,           null: false
      t.integer :birth_day,             null: false


      t.timestamps
    end
  end
end
 