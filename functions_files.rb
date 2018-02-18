# 'input_file' is a variable, '=' assigns a value to the variable, ARGV takes user input, 'first' must be a method called on ARGV
# '.first' returns the first elements, or the first (n) elements, of the array
input_file = ARGV.first

# 'f' allows the 'print_all' method to receive 1 argument which is stored in array named 'f'
def print_all(f)
# 'puts' is actually a method. So you're calling the 'puts' method with the argument of 'f.read'
    puts f.read
end

# 'f' allows the 'print_all' method to receive 1 argument which is stored in array named 'f'
def rewind(f)
    f.seek(0)
end

# (line count, f) allows the 'print_a_line' method to receive 2 arguments which are stored in an array
def print_a_line(line_count, f)
# the '#{}' tells Ruby to include the value of the variable in the string that you are defining
    puts "#{line_count}, #{f.gets.chomp}"
end

# the '=' means that this line will assign a value to a variable, resulting in the expression on the right of the '=' being assigned to the name(s) on the left
current_file = open(input_file)

puts "First let's print the whole file:\n"

print_all(current_file)

puts "Now let's rewind, kind of like a tape."

rewind(current_file)

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)