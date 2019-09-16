class Order < ApplicationModel
  has_many :goods

  def add_goods(quantity, name, mrp)
  	Good.new(quantity, name, mrp, self.object_id)
  end

  def recipt
    totalTax=0
    final_Price = 0
    self.goods.each do |x|
      sales_price = x.mrp.to_f + x.tax
      puts "#{x.quantity} #{x.name} #{sales_price}"
      totalTax = totalTax + x.tax
      final_Price = final_Price + x.total_Price
    end
      puts "Sales Tax: #{totalTax}"
      puts "Total: #{final_Price}"
  end
end