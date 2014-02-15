pdf.text "Order #{@bill.id}",:size =>30, :style => :bold
pdf.move_down(20)
 [
  @bill.created_at,
  @bill.updated_at,

  
 ]
 pdf.table_items, :border_style =>:grid
