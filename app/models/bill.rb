class Bill < ActiveRecord::Base
belongs_to :customer
has_many :bill_details
belongs_to :supplier
require 'prawn'
def generate_pdf(bill)
  Prawn::Document.new do
    text_box "J.J.R Auto Mobiles Store", :at => [175, y - 50]
    move_down 30
      text_box "Bill No",:kerning => true, :at => [100, y - 50]
      text_box "Discount", :kerning => true, :at => [200, y - 50]
      text_box "Tax", :kerning => true, :at => [300, y - 50]
      text_box "Total", :kerning => true, :at => [400, y - 50]
      move_down 20
        move_down 20
        text_box "#{bill.bill_no}",:kerning => true, :at => [100, y - 50]
        text_box "#{bill.discount}", :kerning => true, :at => [200, y - 50]
        text_box "#{bill.tax}", :kerning => true, :at => [300, y - 50]
        text_box "#{bill.total_amount}", :kerning => true, :at => [400, y - 50]
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
