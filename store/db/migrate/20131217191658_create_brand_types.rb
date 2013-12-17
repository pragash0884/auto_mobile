class CreateBrandTypes < ActiveRecord::Migration
  def change
    create_table :brand_types do |t|
      t.string :brand_name
      t.integer :brand_id
      t.timestamps
    end
  end
end
