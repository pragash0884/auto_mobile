class CreateSpareItems < ActiveRecord::Migration
  def change
    create_table :spare_items do |t|
      t.string :item_name
      t.string :description
      t.integer :brand_type_id
      t.decimal :price
      t.decimal :discount
      t.string :serial_number
      t.timestamps
    end
  end
end
