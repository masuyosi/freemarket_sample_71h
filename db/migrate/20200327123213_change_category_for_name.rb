class ChangeCategoryForName < ActiveRecord::Migration[5.2]
  def change
    rename_column :categories, :category, :name
  end
end
