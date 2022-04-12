#Ternary Conditional Operator

day = "Monday"
puts day == "Monday" ? "Have a happy working week ahead!" : "See you on Monday!."
print "==========================================\n"

#Anohter way to define the Case statement
puts "English | French | German | Finnish"
puts "Type out the language you want to hear the greeting message: "
greeting = gets.chomp

case greeting
  when "English" then puts "Hello!"
  when "French" then puts "Bonjour!"
  when "German" then puts "Guten Tag!"
  when "Finnish" then puts "Haloo!"
  else puts "I don't know that language!'"
end
print "==========================================\n"

#Condtional Assignement
#       (||=) Conditional Assignment Operator   :   It is used to assign value to the   variable if it hasn't been already.


#Refactoring Case Statement
puts "What's your favorite language?"
language = gets.chomp

case language
when "Ruby" then puts "Ruby is great for web apps!"
when "Python" then puts "Python is great for science."
when "Javascript" then puts "Javascript makes website awesome."
when "HTML" then puts "HTML is what websites are made of!"
when "CSS" then puts "CSS makes website pretty."
else puts "I don't know that language!'"
end
print "==========================================\n"


