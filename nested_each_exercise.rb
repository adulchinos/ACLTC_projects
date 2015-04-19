array = [ ["a", "b", "z"], ["c", "d"], ["e", "f"], ["g", "h", "i", "j"] ]

array.each do |inner_array|
	inner_array.each do |letter|
		print letter.upcase!
	end
puts 
end