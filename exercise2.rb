# Set the gross price and the percentage tip
price = 55
rate = 17
cents = price * (100 + rate)
dollars = cents / 100
# round up unless price is even
unless cents % 100 == 0
	dollars += 1
end
puts "The bill comes to $#{dollars} with a $#{dollars - price} tip."

