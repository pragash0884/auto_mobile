class BillDetail < ActiveRecord::Base
belongs_to :spare_item
belongs_to :bill
scope :by_name,lambda {|name|{:conditions=>['UPPER(name) LIKE UPPER(?)',"%%"+name+"%%"]}}
end
