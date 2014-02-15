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
    @bill = Bill.includes(:bill_details)
    #render :action => "admin"
  end

   def generate_report
     @bill = Bill.find(params[:bill_id])
     @pdf = @bill.generate_pdf(@bill)
     send_data(@pdf.render, :filename => "output_#{@bill.id}.pdf", :type => "application/pdf", :disposition => "inline")
   end
end
