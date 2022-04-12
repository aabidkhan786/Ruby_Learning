#Reading Files in Ruby
File.open("methods.txt","r") do |file|      #r : stands for reading out the files
    puts file.read()
end