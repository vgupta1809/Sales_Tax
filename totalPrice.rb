module TotalPrice
	def total_Price
		price = self.tax.to_f + self.mrp.to_f
		return price
	end
end