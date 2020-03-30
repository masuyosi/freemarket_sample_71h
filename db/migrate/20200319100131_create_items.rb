class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :content, null: false
      t.integer :price, null: false
      t.integer :seller_id, foreign_key: true
      t.integer :buyer_id, foreign_key: true
      # t.references :item_condition, null: false, foreign_key: true
      # t.references :postage_payer, null: false, foreign_key: true
      # t.references :prefecture, null: false, foreign_key: true
      # t.references :preparation_day, null: false, foreign_key: true
      # t.references :user, null: false, foreign_key: true
      # t.references :category, null: false, foreign_key: true
      # t.references :brand, null: false, foreign_key: true
      t.timestamps
    end
  end
end
