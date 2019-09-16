class Good < ApplicationModel
  include TaxCalculation, Exempted, TotalPrice
  attr_accessor :quantity, :name, :mrp, :order_id
  def initialize(quantity, name, mrp, order_id)
    @quantity = quantity
    @name = name
    @mrp = mrp
    @order_id = order_id
  end
  def imported?
    name.include? "imported" 
  end 
end