class AddImageToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :image, foreign_key: true
  end
end
