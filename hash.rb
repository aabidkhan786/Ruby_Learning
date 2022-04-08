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