class AddItemToBrands < ActiveRecord::Migration[5.2]
  def change
    add_reference :brands, :item
  end
end
