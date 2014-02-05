class CreateBillDetails < ActiveRecord::Migration
  def change
    create_table :bill_details do |t|
      t.integer :spare_item_id, :bill_id
      t.string :description
      t.timestamps
    end
  end
end
