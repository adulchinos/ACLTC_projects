people = [
  {
    "first_name" => "Bob",
    "last_name" => "Jones", 
    "hobbies" => ["basketball", "chess", "phone tag"]
   },
   {
    "first_name" => "Molly",
    "last_name" => "Barker",
    "hobbies" => ["programming", "reading", "jogging"]
   },
   {
    "first_name" => "Kelly",
    "last_name" => "Miller",
    "hobbies" => ["cricket", "baking", "stamp collecting"]
   }
]

people.each do |inside_people|

    inside_people["hobbies"].each do |thing|
        thing.upcase! #this line could have been ==> puts thing.upcase ==> and you could have removed....
    end

  puts inside_people["hobbies"] # ....this line.
end


# people.each do |hobby|
#   puts hobby['hobbies']
# end

#or?

# people.each do |inside_people|
#   inside_people.each do |key, value|
#     if key == "hobbies" puts key[value.upcase] end
#   end
# end


