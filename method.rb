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