# Assigns 'ARGV' to an array called 'input_array', which will bind the contents of ARGV to a variable.
input_array = ARGV

# Calls the method 'length' on ARGV, which will return with the number of arguments a user passed.
# Output => 5
puts input_array.length

# You can print the results of the ARGV assay using puts 'input_array.to_s'.
# Output => ["first", "and", "all", "the", "rest!"]
puts input_array.to_s

# Because of the splat operator '*', Ruby knows to assign 'ARGV[0]' to 'first_arg', and the rest of the arguments to 'the_rest'.
first_arg, *the_rest = ARGV

# Output => first
puts first_arg

# Output => and
# =>        all
# =>        the
# =>        rest
puts the_rest