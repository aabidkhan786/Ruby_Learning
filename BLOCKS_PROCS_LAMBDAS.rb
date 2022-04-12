=begin
A Ruby block is just a bit of code that can be executed. Block syntax uses either do..end or curly braces ({}), like so:
        [1, 2, 3].each do |num|
        puts num
        end
        # ==> Prints 1, 2, 3 on separate lines
        
        [1, 2, 3].each { |num| puts num }
        # ==> Prints 1, 2, 3 on separate lines
=end

5.times do
    puts "I’m a block!"
    puts "\n"
end
print "=======================================\n"

=begin
Procs: You can think of a proc as a “saved” block: just like you can give a bit of code a name and turn it into a method, you can name a block and turn it into a proc. Procs are great for keeping your code DRY, which stands for Don’t Repeat Yourself. With blocks, you have to write your code out each time you need it; with a proc, you write your code once and can use it many times!
=end

multiples_of_3 = Proc.new do |n|
    n % 3 == 0
  end
  
print (1..100).to_a.select(&multiples_of_3)
print "=======================================\n"

#Rounding down the number suing the Proc method
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
round_down = Proc.new do |n|
  n.to_f.floor
end
ints = floats.collect(&round_down)
puts ints
print "==================================================\n"

#Some more procs working
group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# Complete this as a new Proc
over_4_feet = Proc.new do |n|
  n >= 4
end
can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

puts can_ride_1
puts can_ride_2
puts can_ride_3
print "==================================================\n"

#Working with the yield and Procs
def greeter
    yield
end

phrase = Proc.new { puts "Hello there!" }
greeter(&phrase)
print "==================================================\n"


#Converting numbers into string
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.collect(&:to_s)

puts numbers_array
puts "********************************"
puts strings_array
print "==================================================\n"

=begin
Like procs, lambdas are objects. The similarities don’t stop there: with the exception of a bit of syntax and a few behavioral quirks, lambdas are identical to procs.

Lambda Syntax
lambda { |param| block }
=end

#Converting the strings into symbol by using the lambda
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!
symbolize = lambda { |strings| strings.to_sym }

# Write your code above this line!
symbols = strings.collect(&symbolize)
print symbols
print "\n==================================================\n"

#Now below we have the difference between lambda and procs
def batman_ironman_proc
    victor = Proc.new { return "Batman will win!" }
    victor.call
    "Iron Man will win!"
end
puts batman_ironman_proc
print "******************************\n"
  
def batman_ironman_lambda
    victor = lambda { return "Batman will win!" }
    victor.call
    "Iron Man will win!"
end
puts batman_ironman_lambda
print "\n==================================================\n"

=begin
    A block is just a bit of code between do..end or {}. It’s not an object on its own, but it can be passed to methods like .each or .select.

    A proc is a saved block we can use over and over.

    A lambda is just like a proc, only it cares about the number of arguments it gets and it returns to its calling method rather than returning immediately.
=end

#Lambda to check the hash value if it less than letter "M"
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda { |key, value| value[0] < "M" }
print crew.collect\(&first_half)
# The above output will be: [false, false, true, false, false, false, true, true]

a_to_m = crew.select(&first_half)
puts a_to_m
#The above output will be: {:lt_cdr=>"Data", :chief_engineer=>"LaForge", :doctor=>"Crusher"}

#The difference between .collect and .select is : .collect return boolean value and .select return the key value pairs.