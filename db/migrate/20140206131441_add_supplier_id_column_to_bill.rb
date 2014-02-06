class AddSupplierIdColumnToBill < ActiveRecord::Migration
  def change
    add_column :bills, :supplier_id, :integer
  end
end
