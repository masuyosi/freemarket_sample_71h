class AddPostagePayerToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :postage_payer
  end
end
