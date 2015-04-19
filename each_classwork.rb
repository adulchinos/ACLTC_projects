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
  inside_people["email"] = 
  "#{ inside_people[ "first_name" ].downcase }#{ inside_people[ "last_name" ].downcase }@gmail.com"
  #alternately, in lieu of the string:    inside_people[first_name] + inside_people[last_name] + "@gmail.com"
end

puts people

