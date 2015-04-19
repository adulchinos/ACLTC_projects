# .split(":") or anything really
# hashes

#lookup, define

dictionary = {} #do all of these have to be with the @?
input = ""



def define #is this what i want to be doing?
	word_and_definition = input.split(":").split(",")

	dictionary[word_and_definition[1]] = word_and_definition[2] #adding input to dictionary
end

def lookup #this isnt finished!!!!!!!!!!!!!!!!! dont forget!
	thing_to_look_up = input.split(":")
	puts thing_to_look_up[1]
end



puts "welcome to dictionary, I'll fix this later" #define: red, a color ==>example of input
input = gets.chomp #the user's input

if input.include? "define"  #if the user's input includes the word define, run define on the string. if lookup, etc. 
	 input.define #input.instance_eval{define}
elsif input.include? "lookup" #of course..... how do i find that out?
	input.lookup
end

#OH MY GOD THIS IS A DISASTER

# So, I think this doesnt work because you can only define new methods in relation to a specific class of object? 
# These methods arent connected to any particular class, so the computer has no idea how to apply them. 'input' is a
# string, and theres no such method as 'define' or 'lookup' for strings insofar as the computer is concerned!