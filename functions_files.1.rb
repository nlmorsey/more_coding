# Takes the user input that was entered on the command line.
input_file = ARGV.first

# Defines a method called 'print_all' in which the user input is the argument, e.g. variable 'f'
# The method 'read' is used, e.g. it opens the file, then returns what is in file. The method 'read' ensures the file is closed before returning.
# Using a class literal we find out the class of 'f'
# Using 'p' alone we find out the value stored inside of 'f'
def print_all(f)
    puts f.read
    p f.class
    p f 
end

# Defines a method called 'rewind' in which the user input is the argument, e.g. variable 'f'
# The method 'seek' is used, e.g. it seeks to a given offset an Integer in the stream according to the value of whence. In this case, Integer is 0.
# Using a class literal we find out the class of '0'
# Using 'p' alone we find out the value of '0' (well, it's just itself)
def rewind(f)
    f.seek(0)
    p 0.class
    p 0
end

# Defines a method named 'print_a_line' with 2 arguments.
# Writes the given objects to ios
# The method 'gets' reads the next line from the I/O stream
def print_a_line(line_count, f)
# The '.' symbol means "Call the method gets that is for this particular thing" instead of "call the generic method gets"
    puts "#{line_count}, #{f.gets.chomp}"
end

# Assigns value 'open(input_file)' to variable 'current_file'
# Method 'open' ... it opens the file named by arguments () and returns a new File object.
current_file = open(input_file)

# Writes the String to IOS and creates a newline
puts "First let's print the whole file:\n"

# Calls the method you defined with arguments you defined
print_all(current_file)

puts "Now let's rewind, kind of like a tape."

# Calls the method you defined with arguments you defined
rewind(current_file)

puts "Let's print three lines:"

# The variable 'current_line' will be used as the argument in place of 'line_count", for 'print_a_line' 
current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)
