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
    #render :action => "admin"
  end

end
