class Brand < ActiveRecord::Base
  belongs_to :product_type
  has_many :brand_types 

  def self.get_brand_types(id)
      brand = find(id)
      brand_types = brand.brand_types.compact
  end
end
