#Defining method in Ruby.
def add_two(number)
    result = number + 1.next
    return result
end
puts add_two(12)
printf "====================================\n"

#Calling method inside the another method

#Displaying the result method
def display_message(message,pass_fun)
    "#{message}#{pass_fun}"
end

#Adding method
def add_two(num1=0,num2=0)
    sum = num1 + num2;
    add_message = "#{num1}, #{num2} is : #{sum}"
end

puts display_message("The sum of ",add_two(1,2))
printf "====================================\n"

#subtraction method
def sub_two(num1=0,num2=0)
    if num1 > num2
        diff = num1 - num2
        add_message = "#{num1}, #{num2} is : #{diff}"
    else
        diff = num2 - num1
        add_message = "#{num2}, #{num1} is: #{diff}"
    end
end

puts display_message("The difference of ",sub_two(2,1))
printf "====================================\n"

#Multiplication method
def mul_two(num1=0,num2=0)
    mul = num1 * num2;
    add_message = "#{num1}, #{num2} is : #{mul}"
end

puts display_message("The multiplication of ",mul_two(5,7))
printf "====================================\n"

#Division method
def div_two(num1=0,num2=0)
    div = (num1 / num2.to_f);
    add_message = "#{num1}, #{num2} is : #{div}"
end
puts display_message("The division of ",div_two(5,7))
printf "====================================\n"

#Arraying the arguments
#Using the * - splat operator : splat operator convert the array into parameter list
puts "Using the spat operator we display the message"
def adds(*number)
    number.inject(0) { |sum,number| sum + number }
end

puts display_message("The sum is : ",adds(1,5,69,78,51,26,45))
printf "**************************************\n"

def muls(*number)
    number.inject(1) { |mul,number| mul * number }
end

puts display_message("The multiplication is : ",muls(1,5,69,78,51,26,45))

#Now we have the another way of making method without the name and that is called as lambda

hello = lambda { |message| "Hello, #{message}" }
puts hello.call("Aabid")
printf "====================================\n"

#Writing a method ascend and descend the given array
def alphabetize(arr,rev=false)
    arr.sort!
    if rev
      arr.reverse!
    else
      return arr
    end
end
numbers = ["Recall that hashes are collections of","key-value pairs, where a unique","key is associated with some value. For example:"]
puts alphabetize(numbers,rev=true)
printf "******************************\n"
puts alphabetize(numbers)
printf "====================================\n"
numbers = [120,84,1,0,88,56,78,23,784,1000]
puts alphabetize(numbers,rev=true)
printf "******************************\n"
puts alphabetize(numbers)
