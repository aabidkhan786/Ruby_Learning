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
print "================================================\n"