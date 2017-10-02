class CreateGuests < ActiveRecord::Migration[5.1]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :api_token
      t.string :address
      t.string :city
      t.string :state
      t.integer :postal_code
      t.string :email

      t.timestamps
    end
    add_index :guests, :api_token, unique: true
  end
end
