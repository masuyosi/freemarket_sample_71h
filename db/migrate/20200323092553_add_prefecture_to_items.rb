class AddPrefectureToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :prefecture, null: false
  end
end
