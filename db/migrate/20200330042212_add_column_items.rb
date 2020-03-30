class AddColumnItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :category
  end
end
