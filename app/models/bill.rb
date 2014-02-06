class Bill < ActiveRecord::Base
belongs_to :customer
has_many :bill_details
belongs_to :supplier
require 'prawn'
def generate_pdf(bill)
  Prawn::Document.new do
    move_down 20
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
end
