def confirmed_input(prompt)
	confirm = nil
	until confirm == 1
		confirm = nil
		input = nil
		puts prompt
		until confirm
			puts "is #{ input ||= gets.chomp } correct? (Y/N)"
			confirm = ["N", "Y"].find_index(gets.chomp.upcase)
		end
	end
	input
end
puts "Hi #{name = confirmed_input("What is your name?")}!"
puts "You are #{age = confirmed_input("How old are you?").to_i} years old!"
puts "You were born in #{birth = Time.now.year - age - 1} or #{birth + 1}!"
