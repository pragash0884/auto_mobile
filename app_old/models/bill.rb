class Bill < ActiveRecord::Base
belongs_to :customer
has_many :bill_details
require 'prawn'
def generate_pdf(token)
  Prawn::Document.new do
    move_down 20
    text "Order ##{token.id}",:size =>20, :style => :bold
    move_down 10
    text "#{token.created_at}"
    move_down 10
    text "#{token.updated_at}"
    move_down 10

  end
end
end
