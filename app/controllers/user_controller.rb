class UserController < ApplicationController
  def index
  end

  def login_validate
  end

  def add_bill
    @item = SpareItem.find(params[:spare_items])
    @qty = params[:qty].blank? ? 1 : params[:qty]
    @customer = Customer.where(:email => params[:customer][:email]).first || Customer.create(bill_params)
    @bill = @customer.bills.create(params[:bill])
    @total = (@qty * @item.price)
    @count = params[:count].to_i
    render :partial => "add_bill"
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

  def save_invoice
  end
  private

  def bill_params
    params.require(:ad).permit(:name,email,:phone)
  end
end
