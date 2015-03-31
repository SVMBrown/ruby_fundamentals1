name = nil
confirm = nil
until confirm == 1
	confirm = nil
	name = nil
	puts "What is your name?"
	until confirm
		puts "Are you #{ name ||= gets.chomp }? (Y/N)"
		confirm = ["N", "Y"].find_index(gets.chomp.upcase)
	end
end
puts "Hi #{name}!"