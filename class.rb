#In this we will have the ruby class and how to define the class and how to call them for use

class Rectangle
    
    #Defining Area method in rectangle class
    def area(length=0,breadth=0)
        printf "=================================\n"
        result = "The area of #{length} & #{breadth} is : #{length * breadth}"
    end

    #Defining Perimeter method in rectangle class
    def perimeter(length=0,breadth=0)
        printf "=================================\n"
        result  = "The perimeter of #{length} & #{breadth} is : #{2 * (length + breadth)}"
    end

end

#Now how to use this class. For that we need to access that class into a veriable with the help of a method name 'new'

rectangle = Rectangle.new

#Now suppose I want to calculate the area of a given size, then:
puts rectangle.area(15,5)

#For calling out the perimeter of the given size, then:
puts rectangle.perimeter(75,2)

#Now making a calculator class for arithmetic operations.
class Calculate
    def addition(num1=0,num2=0)
        printf "=========================\n"
        result = "The sum of #{num1} & #{num2} is : #{num1+num2}"
    end

    def subtraction(num1=0,num2=0)
        printf "=========================\n"
        result = "The difference of #{num1} & #{num2} is : #{num1-num2}"
    end

    def multiplication(num1=0,num2=0)
        printf "=========================\n"
        result = "The multiplication of #{num1} & #{num2} is : #{num1*num2}"
    end

    def division(num1=0,num2=0)
        printf "=========================\n"
        result = "The division of #{num1} & #{num2} is : #{num1.to_f/num2}"
    end
end

calculation = Calculate.new
puts calculation.addition(7500,6235)
puts calculation.subtraction(21000,11026)
puts calculation.multiplication(4255,6)
puts calculation.division(25000,13)

#=========================================================
#Public and Private in Class
class Dog
    def initialize(name, breed)
      @name = name
      @breed = breed
    end
    
    #this is the way to declare public method in class
    public
    def bark
      puts "Woof!"
    end

    #This is the way to declare private method in class
    private
    def id
        @id_number = 12345
    end

end