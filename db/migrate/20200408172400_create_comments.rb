class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :text
      t.references :user
      t.references :item
      t.timestamps
    end
  end
end