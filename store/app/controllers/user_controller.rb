class UserController < ApplicationController
  def index
  end

  def login_validate
  end

  def add_bill
    @item = SpareItem.find_by_item_name(params[:item])
    @count = params[:count].to_i
  end

  def show_brands
    @brands = ProductType.get_brands(params[:product_type_id])
    render :partial => "brands"
  end

  def show_brand_types
    @brand_types = Brand.get_brand_types(params[:brand_id])
    render :partial => "brand_types"
  end

  def show_spare_items
    @spare_items = BrandType.get_spare_items(params[:brand_type_id])
    render :partial => "spare_items"
  end

  def switch_admin
    render :action => "admin"
  end

end
