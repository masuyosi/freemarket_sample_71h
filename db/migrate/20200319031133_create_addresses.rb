class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :prefecture,               null: false
      t.string :city,                      null: false
      t.integer :post_cord,                null: false
      t.string :house_number,              null: false
      t.integer :phone_number,             null: false
      t.string :family_name,               null: false
      t.string :first_name_kana,           null: false
      t.string :family_name_kana,          null: false
    

      t.timestamps
    end
  end
end
