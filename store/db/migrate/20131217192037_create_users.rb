class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	 t.string :name, :display_name, :email, :password, :city, :address1, :address2, :phone
         t.integer :pincode
      	 t.timestamps
    end
  end
end
