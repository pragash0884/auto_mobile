class AdminController < ApplicationController

  def product_feed
  end

  def add_product_items
    @product = ProductType.find_or_create_by(:p_type => params[:product_type_val])
    render :partial => "add_product_item"
  end


  def add_brand_types
    @brands = Brand.find(params[:brand_id])
    @brand = @brands.brand_types.find_or_create_by(:brand_name => params[:brand_type_id])
    @brand_types = BrandType.all
    render :partial => "user/brand_types"
  end

  def update_spare_items
    @brand_type = BrandType.find(params[:brand_type])
    @brand_types = @brand_type.spare_items.find_or_create_by(:item_name => params[:spare_name],:price => params[:spare_price],:quantity=> params[:spare_qty])
    render :partial => "user/spare_items"
  end

  def update_price_qty
     if params[:product_spare_id] != ""
       @spare_items = SpareItem.find(params[:product_spare_id])
    end
    render :partial => "update_price_qty"
  end

  def add_product_item


  end

  def update_brands
    #  raise params.inspect
    @product_type = ProductType.find(params[:product_type])
    @brand = @product_type.brands.find_or_create_by(:name => params[:brand_type_name])
    @brands = Brand.all

    render :partial => "user/brands"
  end

  def report
    @bills = Bill.includes(:bill_details)
    #render :action => "admin"
  end

  def generate_report
    @bill = Bill.find(params[:bill_id])
    @pdf = @bill.generate_pdf(@bill)
    send_data(@pdf.render, :filename => "output_#{@bill.id}.pdf", :type => "application/pdf", :disposition => "inline")
  end

  def get_customer_reports
    @customer = Customer.where(:email=>params[:email]).first
    @bills = @customer.bills
    render :template=>"/admin/report", :layout=>true
  end

  def customer_reports_pdf
    @customer = Customer.find(params[:customer_id])
    unless @customer.bills.blank?
      @pdf = @customer.generate_bills_pdf(@customer.bills)
      send_data(@pdf.render, :filename => "output_#{@customer.id}.pdf", :type => "application/pdf", :disposition => "inline")
    else
      render :text=> "No bills"
    end
  end
end