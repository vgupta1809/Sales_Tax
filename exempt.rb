module Exempted
  Exempt_List = { books:['book'],
                  food: ['chocolate'],
                  medical_products:['pills']
                }
  def exempted?
    Exempt_List.values.flatten.
    any?{ |i| name.include?(i) }
  end
end
