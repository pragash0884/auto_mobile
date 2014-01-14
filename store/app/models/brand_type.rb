class BrandType < ActiveRecord::Base
belongs_to :brand
has_many :spare_items
end
