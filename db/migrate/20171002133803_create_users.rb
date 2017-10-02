class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :confirmation_password
      t.string :api_token
      t.string :address
      t.string :city
      t.string :state
      t.integer :postal_code

      t.timestamps
    end
    add_index :users, :api_token, unique: true
  end
end
