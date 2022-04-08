#In Ruby we can create an array by many ways

#First way
greetings = ["Hello", 'Holla', "Bonjour","Guten tag","salve","ola","Assalam Alaikum","Namaste"]
puts greetings

print "================================================\n"

#Second Way
greetings1 = Array.new(["Hello", 'Holla', "Bonjour","Guten tag","salve","ola","Assalam Alaikum","Namaste"])

puts greetings1

print "================================================\n"

#Array in Ruby can be hold value of different data-types
holdData1 = ["It's been so hot outside like",45,"and the temperature in the room feels like",18]

puts holdData1

print "================================================\n"

#Calling out the array using numbers.
puts greetings[5]
puts greetings1[3]
puts holdData1[2]

print "================================================\n"

#Using methods in Array
puts greetings.sort     #Using Sort Method
#puts holdData1.sort     #But using sort method in different-data types won't work out
print "================================================\n"
puts greetings1.reverse
print "================================================\n"

#Pushing value in array
greetings<<"konnichiwa"
puts greetings
print "================================================\n"

greetings1.push("konnichiwa")
puts greetings1