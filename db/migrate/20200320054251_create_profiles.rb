class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|

      t.string  :family_name ,null: false
      t.string  :first_name,null: false
      t.timestamps
    end
  end
end
