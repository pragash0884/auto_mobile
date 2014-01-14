class SpareItem < ActiveRecord::Base
belongs_to :brand_type
has_many :bill_details
end
