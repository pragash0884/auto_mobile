class BrandType < ActiveRecord::Base
  belongs_to :brand
  has_many :spare_items
  
  def self.get_spare_items(id)
    brand_type = find(id)
    brand_type.spare_items.compact
  end
end
