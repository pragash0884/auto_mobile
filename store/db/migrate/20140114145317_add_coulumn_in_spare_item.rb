class AddCoulumnInSpareItem < ActiveRecord::Migration
  def change
	add_column :spare_items, :quantity, :integer
        add_column :spare_items, :mfg_date, :date
  end
end
