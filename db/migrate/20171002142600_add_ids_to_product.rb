class AddIdsToProduct < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :user, foreign_key: true
    add_reference :products, :guest, foreign_key: true
    add_reference :products, :category, foreign_key: true
  end
end
