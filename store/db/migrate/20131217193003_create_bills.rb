class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :bill_no
      t.decimal :discount
      t.integer :tax
      t.decimal :total_amount
      t.timestamps
    end
  end
end
