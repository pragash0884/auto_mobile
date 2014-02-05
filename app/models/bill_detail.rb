class BillDetail < ActiveRecord::Base
belongs_to :spare_item
belongs_to :bill
end
