class AdminController < ApplicationController

  def product_feed
  end

  def add_product_items
      ProductType.create(:p_type => params[:product_type_val])
      render :partial => "add_product_items"
  end


  def update_spare_items
      ProductType.create(:p_type => params[:product_type_val])
      render :partial => "add_product_items"
  end

  def add_product_items
      ProductType.create(:p_type => params[:product_type_val])
      render :partial => "add_product_items"
  end

  def add_product_items
      ProductType.create(:p_type => params[:product_type_val])
      render :partial => "add_product_items"
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
