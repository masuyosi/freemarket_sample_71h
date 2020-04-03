class DeleteParentIdFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_reference :items, :parent
    add_column :items, :parent_name, :string
  end
end
