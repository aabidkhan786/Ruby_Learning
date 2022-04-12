#In Ruby we can create an array by many ways

#First way
greetings = ["Hello", 'Holla', "Bonjour","Guten tag","salve","ola","Assalam Alaikum","Namaste"]
puts greetings

print "================================================\n"

#Second Way : And this basically used to tell ruby that you want to create an array but don't specified the data.
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
greetings << "konnichiwa"
puts greetings
print "================================================\n"

greetings1.push("konnichiwa")
puts greetings1
print "================================================\n"

#Filtering elemnet in array
puts greetings.select { |i| i.length > 5}
print "================================================\n"

#.. method
digit = Array(0..9)
puts "#{digit}"
print "================================================\n"


#Collecting Array data with index numbers
numbers = ["One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten"]
numbers.collect.with_index do | number, index |
    puts "#{index+1}: #{number}"
end
print "================================================\n"

#Using with_index method in an array
words = ["one", "two", "three", "four", "five"]
new_words = words.select.with_index do |number,ind|
    ind.even?
end
puts new_words
# puts words.upcase 
print "================================================\n"

#Sorting of array in Ascending and Descending Order
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
#   <=> : it is called as comparison operator
puts books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

printf "****************************\n"

# Sort your books in descending order.
puts books.sort! { |firstbook,secondbook| secondbook <=> firstbook }
print "================================================\n"

#Collecting out only integer value - using block method
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

int = odds_n_ends.select do |integer|
  integer.is_a?(Integer)
end

puts int