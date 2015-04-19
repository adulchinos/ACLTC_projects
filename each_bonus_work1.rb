array = [["a", "b", "z"], ["c", "d"], ["e", "f"], ["g", "h", "i", "j"]]

nu_array = []
array.each do |inner|
	inner.each do |letter|
		nu_array << letter
	end
end

puts nu_array

#you could also use ==> puts array.flatten ==> !