class CreateDailyInventoryLevels < ActiveRecord::Migration
  def change
    create_table :daily_inventory_levels do |t|

      t.timestamps
    end
  end
end
