class AddAddItemSituationToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :item_situation
  end
end
