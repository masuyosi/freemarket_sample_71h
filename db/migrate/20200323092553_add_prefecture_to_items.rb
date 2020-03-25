class AddPrefectureToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :prefecture
  end
end
