class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.boolean :purchase

      t.timestamps
    end
  end
end
