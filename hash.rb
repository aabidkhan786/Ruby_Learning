#We have another data structure in Ruby i.e. HASH

greetings = {
    "spanish"=>"Hola",
    "french"=>"bonjour",
    "german"=>"guten tag",
    "italian"=>"salve",
    "chinese"=>"nin hao",
    "portugese"=>"ola",
    "arabic"=>"Assalam Alaikum",
    "japanese"=>"konnichiwa" 
}

#Calling greetings in Spanish
puts greetings["spanish"]

#Calling greetings in chinese
puts greetings["chinese"]

#Calling greetings in japanese
puts greetings["japanese"]
print "================================================\n"

#Modifying the value of Hash
puts greetings["chinese"]           #Before value of chinese
greetings["chinese"] = "nǐn hǎo"
puts greetings["chinese"]           #After value of chinese
print "================================================\n"

#Iterating the Hash Data Structure
greetings.each do | lang, greet |
    puts "#{lang} : #{greet}"
end
print "================================================\n\n"

#Some arithemtic operations in Hash Data
restaurant_menu = {
    "Dal Makhni" => 120,
    "Rice" => 75,
    "Water Bottle" => 20,
    "Butter Chicken" => 220,
    "Mutton Kabab" => 250
}

puts "Price of menu before discounts."
restaurant_menu.each do | item, price |
    puts "#{item} : ₹#{price}"
end

print "********************************\n"
puts "Price of menu after discounts."
restaurant_menu.each do | item, price |
    price = price - price * 10/100
    puts "#{item} : ₹#{price}"
end

print "================================================\n\n"
#To print the only key from hash
puts restaurant_menu.keys
print "********************************\n"
#To print the only value from hash
puts restaurant_menu.values

#Ruby also has the ability to make the hash table using different methods
#Just like the array but with the prceeding word of Hash and instead of = we place ,
cards = Hash[:clubs,'♣', :diamonds,'♦', :hearts,'♥', :spades,'♠']
puts cards
printf "\n"
puts cards.values
puts cards.keys

print "===============================================\n\n"
#find out the no of the times words has been repeated
puts "Enter the text: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each { |word| frequencies[word] += 1 }

frequencies = frequencies.sort_by do |word,count|
  count
end

frequencies.reverse!

frequencies.each do |key,value|
  puts "#{key} -> #{value}"
end

print "==============================================\n\n"

#Converting the given string into symbols for Hash
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []

strings.each do |s| 
 symbols.push(s.intern)
end 
print symbols
print "==============================================\n\n"

#An Exmple of Movie and It's rating
movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end