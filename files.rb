#Reading Files in Ruby
File.open("methods.txt","r") do |file|      #r : stands for reading out the files
    
    #To print out the Singel line of the docuemnt we use, .readlines()
    # puts file.readlines()

    #To print out the whole document we use .read()
    # puts file.read()

    #To print out the Singel Character of the docuemnt we use, .readchar()
    # puts file.readchar()

    #Alternative of .read() we have the option of looping readline()
    for line in file.readlines()
        puts line
    end
end