class RenameProductType < ActiveRecord::Migration
  def change
	rename_column :product_types, :type, :p_type	
  end
end
