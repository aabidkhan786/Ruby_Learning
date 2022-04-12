=begin
Mode |  Meaning
-----+--------------------------------------------------------
"r"  |  Read-only, starts at beginning of file  (default mode).
-----+--------------------------------------------------------
"r+" |  Read-write, starts at beginning of file.
-----+--------------------------------------------------------
"w"  |  Write-only, truncates existing file
     |  to zero length or creates a new file for writing.
-----+--------------------------------------------------------
"w+" |  Read-write, truncates existing file to zero length
     |  or creates a new file for reading and writing.
-----+--------------------------------------------------------
"a"  |  Write-only, starts at end of file if file exists,
     |  otherwise creates a new file for writing.
-----+--------------------------------------------------------
"a+" |  Read-write, starts at end of file if file exists,
     |  otherwise creates a new file for reading and
     |  writing.
-----+--------------------------------------------------------
"b"  |  Binary file mode (may appear with
     |  any of the key letters listed above).
     |  Suppresses EOL <-> CRLF conversion on Windows. And
     |  sets external encoding to ASCII-8BIT unless explicitly
     |  specified.
-----+--------------------------------------------------------
"t"  |  Text file mode (may appear with
     |  any of the key letters listed above except "b").
=end


#Reading Files in Ruby
#First Method
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

#Second Method : In this method one things to remmeber that we need to close the file opening.
file = File.open("methods.txt","r")
puts file.read
file.close()

#================================================================================
#Writing Files in Ruby
