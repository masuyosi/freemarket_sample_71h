class AddCategoryIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :child
    add_reference :items, :parent
  end
end
