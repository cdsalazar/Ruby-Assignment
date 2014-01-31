class Numeric

 @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.0}

 def method_missing(method_id)

   singular_currency = method_id.to_s.gsub( /s$/, '')

   if @@currencies.has_key?(singular_currency)
     self * @@currencies[singular_currency]
   else
     super

   end

 end

 def in(currency)
 	singular_currency = currency.to_s.gsub( /s$/, '')
 	self / @@currencies[singular_currency]
 end

end

#test cases
set = [0, 1, 2, 3]
money = [:dollars, :euros, :rupees, :yens]

set.each {|x| money.each {|c| 
	puts x.dollars.in(c)
	puts x.yens.in(c)
	puts x.rupees.in(c)
	puts x.euros.in(c) }}

#throws no errors