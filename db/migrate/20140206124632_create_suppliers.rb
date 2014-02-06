class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :email
      t.text :address
      t.integer :mobile
      t.timestamps
    end
  end
end
