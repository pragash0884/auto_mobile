class UserController < ApplicationController
  def index
  end

  def login_validate
  end

  def add_bill
    @item = SpareItem.find(params[:spare][:spare_item_id])

    @qty = params[:qty].blank? ? 1 : params[:qty]
    @customer = Customer.where(:email => params[:customer][:email]).first || Customer.create(bill_params_customer)
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
    @customer = Customer.find(params[:customer])
    @bill = @customer.bills.create(:bill_no => Bill.count + 1,:total_amount => params[:grand_total])
    params[:item].each_pair do |key,item|
      debugger
        @bill.bill_details.create(:spare_item_id => item[:spare_id])
    end
   redirect_to "/user/login_validate"
  end

  def supplier
  @suppliers = Supplier.all
  end
  def save_supplier
    debugger
    @supplier = Supplier.where(:email => params[:customer][:email]).first || Supplier.create(bill_params)
    @bill = @supplier.bills.create(:bill_no => Bill.count + 1,:total_amount => params[:bill][:price])
    @bill_details = @bill.bill_details.create(bill_detail_params)
    @count = params[:count].to_i
    render :partial => "add_supplier"
  end
  def find_spare_items
    @spares = BillDetail.where(:spare_item_id => params[:spare_id])
    render :partial => "spares"
  end



private

def bill_params
  params.require(:customer).permit(:name,:email,:mobile)
end
def bill_params_customer
  params.require(:customer).permit(:name,:email,:phone)
end

def bill_detail_params
  params.require(:spare).permit(:spare_item_id)
end
end