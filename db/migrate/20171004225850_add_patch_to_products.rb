class AddPatchToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :patch_id, :string
  end
end
