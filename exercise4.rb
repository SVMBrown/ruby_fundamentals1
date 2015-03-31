(1..100).each do |i|
	out = i.to_s
	out += "\r"
	out += "Bit" if i % 3 == 0
	out += "Maker" if i % 5 == 0
	puts out
end