class ProductType < ActiveRecord::Base
has_many :brands

  def self.get_brands(id)
      p_type = find(id)
      brands = p_type.brands.compact
  end

def self.feed
    ##product_types = ["Two Wheelers", "Three Wheelers", "Four Wheelers", "Six Wheelers". "Others"]
    brand_details = {                                                                                                                                                  "Two Wheelers" =>                                                                                                                                              {                                                                                                                                              "TVS"   => ["RTR 160", "RTR 180"],                                                                                                             "Honda" => ["Unicorn", "Shine", "Activa"],
                                        "Bajaj" => ["Pulsur", "Discover", "CT100"]
                                        },
                         "Three Wheelers" =>
                                        {
                                        "TVS"   => ["Auto"],
                                        "Bajaj" => ["Auto"]
                                        },
                         "Four Wheelers" =>
                                        {
                                        "TATA"   => ["Safari", "Sumo"],
                                        "Honda"  => ["City", "CRV"]

                                        }


                    }
    brand_details.keys.collect{|p_type|
        pt = ProductType.create(:type => p_type)
        brands = brand_details[p_type].keys
        brands.collect{|brand|
                b = Brand.create(:name => brand, :product_type_id => pt.id)
                brand_types = brand_details[p_type][brand]
                brand_types.collect{|bt|
                        BrandType.create(:brand_name => bt, :brand_id => b.id)
                }
        }

    }
end
end
