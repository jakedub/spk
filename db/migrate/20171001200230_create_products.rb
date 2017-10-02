class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :sku
      t.integer :price
      t.integer :year
      t.boolean :availabilty
      t.integer :quantity
      t.string :size

      t.timestamps
    end
  end
end
