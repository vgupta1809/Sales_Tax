module TaxCalculation
  def tax
    salestax = 0
    salestax = salestax + 0.05 if self.imported? 
    salestax = salestax + 0.10 unless self.exempted?
    salestax = salestax * mrp.to_f
    salestax.round(2)
  end
end