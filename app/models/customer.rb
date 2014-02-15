class Customer < ActiveRecord::Base
has_many :bills

validates :email, :phone, :presence=>true
validates :email, :phone, :uniqueness => true

require 'prawn'

def generate_bills_pdf(bills)
 		Prawn::Document.new do
      text_box "J.J.R Auto Mobiles Store", :at => [175, y - 50]
      move_down 20
      text_box "sl",:kerning => true, :at => [50, y - 50]
      text_box "Bill No",:kerning => true, :at => [100, y - 50]
      text_box "Discount", :kerning => true, :at => [200, y - 50]
      text_box "Tax", :kerning => true, :at => [300, y - 50]
      text_box "Total", :kerning => true, :at => [400, y - 50]
      move_down 20
      bills.each_with_index do |bill, index|
        move_down 20
        text_box "#{index + 1}",:kerning => true, :at => [50, y - 50]
        text_box "#{bill.bill_no}",:kerning => true, :at => [100, y - 50]
        text_box "#{bill.discount}", :kerning => true, :at => [200, y - 50]
        text_box "#{bill.tax}", :kerning => true, :at => [300, y - 50]
        text_box "#{bill.total_amount}", :kerning => true, :at => [400, y - 50]
        move_down 20
      end
	end
end
scope :by_name,lambda {|name|{:conditions=>['UPPER(name) LIKE UPPER(?)',"%%"+name+"%%"]}}
scope :by_email,lambda {|email|{:conditions=>['email LIKE (?)',"%%"+email+"%%"]}}
scope :by_phone,lambda {|phone|{:conditions=>['phone =?',phone]}}
scope :by_date,lambda {|date|{:conditions=>['created_at =?',date.to_date.to_s+" 00:00:00"]}}
def self.search(advance_search={}, page=nil, per_page=nil)
  method_mappings = { :name => :by_name,
                      :email => :by_email,
                      :phone=> :by_phone,
                      :date => :by_date

  }
  results=Customer.all
  if not advance_search.blank?
    advance_search.each do |key,value|
      method_name= method_mappings[key.to_sym]
      results= results.send(method_name, value) unless value.blank?
    end
  end
  results =  advance_search.values.reject(&:blank?).blank? ? [] : results

end
end
