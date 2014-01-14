class UserController < ApplicationController
def index
	
end

def login_validate
end

def add_bill
  @item = SpareItem.find_by_item_name(params[:item])
  @count = params[:count].to_i
end
end
