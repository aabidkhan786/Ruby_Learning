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