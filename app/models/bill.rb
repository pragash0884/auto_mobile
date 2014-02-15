class Bill < ActiveRecord::Base
belongs_to :customer
has_many :bill_details
belongs_to :supplier
require 'prawn'
def generate_pdf(bill)
  Prawn::Document.new do
    text_box "J.J.R Auto Mobiles Store", :at => [175, y - 50]
    move_down 20
    text_box "Mob: 9902123409", :at => [200, y - 50]
    move_down 30
      text_box "Name",:kerning => true, :at => [25, y - 50]
      text_box "Email",:kerning => true, :at => [150, y - 50]
      text_box "Phone",:kerning => true, :at => [275, y - 50]
      text_box "Bill No",:kerning => true, :at => [350, y - 50]
      text_box "Discount", :kerning => true, :at => [400, y - 50]
      text_box "Tax", :kerning => true, :at => [475, y - 50]
      text_box "Total", :kerning => true, :at => [500, y - 50]
      move_down 10
        move_down 10
        text_box "#{bill.customer.name rescue nil}",:kerning => true, :at => [25, y - 50]
        text_box "#{bill.customer.email  rescue nil}",:kerning => true,:at => [150, y - 50]
        text_box "#{bill.customer.phone  rescue nil}",:kerning => true, :at => [275, y - 50]
        text_box "#{bill.bill_no}",:kerning => true, :at => [350, y - 50]
        text_box "#{bill.discount}", :kerning => true, :at => [400, y - 50]
        text_box "#{bill.tax}", :kerning => true, :at => [475, y - 50]
        text_box "#{bill.total_amount}", :kerning => true, :at => [500, y - 50]
        move_down 20
  end
end

scope :by_date,lambda {|date|{:conditions=>['created_at >= ? and created_at < ?',date.to_datetime,date.to_datetime+1.day]}}
def self.search(advance_search={}, page=nil, per_page=nil)
  method_mappings = { :name => :by_name,
                      :email => :by_email,
                      :phone=> :by_phone,
                      :date => :by_date

  }
  results=Bill.all
  if not advance_search.blank?
    advance_search.each do |key,value|
          method_name= method_mappings[key.to_sym]
          results=  value.blank? ? [] : results.send(method_name, value)
        end
  end
  results
    end
end
