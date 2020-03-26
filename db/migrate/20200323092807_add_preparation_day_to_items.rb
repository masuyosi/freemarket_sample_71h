class AddPreparationDayToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :preparation_day, null: false
  end
end
