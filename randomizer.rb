names = [
	"bob", 
	"joe",
	 "jessica",
	  "joyce", 
	  "linda", 
	  "phillip"
	]

names = names.shuffle
#puts names ##get rid of later
# i = 0
names.each do |na|
	# puts names[i].to_s + " + " + names[i+1].to_s
	# i = i + 2
	#puts na ##get rid of later

	# if na %2 !=0 
	# 	puts names[na.to_i].to_s + " + " + names[na.to_i-1].to_s
	# else
	# end
	i = 1
	if names[i] %2 != 0
		puts na + " + " + names[i+1]
	end
	i = i + 2
end 

#sposf = 0 #"students_printed_out_so_far"
# names.each do |student|
# 	puts student
#`say #{student}` #only if you wanted your console to SAY the names
	# sposf += 1
	# if sposf.even?
	# 	puts
	# end
# end