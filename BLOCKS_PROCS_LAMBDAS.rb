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