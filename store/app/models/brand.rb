class Brand < ActiveRecord::Base
belongs_to :product_type
has_many :brand_types 
end
