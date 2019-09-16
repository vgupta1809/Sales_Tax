require './exempt'
require './taxCalculation'
require './totalPrice'
require './applicationModel1'
require './order'
require './good'

o1 = Order.new
o1.add_goods('1','imported vaibhav','10')
o1.add_goods('1','book','10')
o1.add_goods('1','music','10')
o1.add_goods('1','imported book','10')

o1.recipt