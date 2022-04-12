name_variable = 'Mohammad Aabid Khan'
puts name_variable

number_variable = 12 - 2 + 4
puts number_variable

puts 2.even?

puts "".to_f

name_array = ["Alex","John","Smith","Bob","Evan","Beyonce"]

puts name_array.sort
sort_name = name_array.sort
puts sort_name.join("_Name\n")

num = { :de => { :one => "eins", :two => "zwei", :three => "drei" } }

puts 255.class

dictionary = { "one" => "eins", "two" => "zwei" }
puts dictionary.keys

puts "Mohammad Aabid"

def add_two(number)
    result = number + 2
    puts result
end
 
add_two(10)

def greet(greet_lan,input_name)
    result = "#{greet_lan} #{input_name}!"
    return result
end
puts greet("Hello","Ada")

array = [1, 2, 3, 4]
puts (array.[](2))
puts array[2]

p [1,2,3,4,5].collect do
    puts {|number| number + 1}
end

dictionary = { :one => "eins", :two => "zwei", :three => "drei" }
key = :four
value = dictionary[key]

if dictionary[key]
  puts "The dictionary defines #{value} value for the key #{key}."
else
  puts "The dictionary does not define a value for the key #{key}."
end