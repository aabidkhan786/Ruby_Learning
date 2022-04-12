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

