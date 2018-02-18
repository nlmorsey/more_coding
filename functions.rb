# '*args' allows the 'Print_two' method to receive 0 or more arguments which are stored in an array named 'arg'.
def Print_two(*args)
# This line is the first line in the body of the method. We are defining what will later be called.
# '*args' is actually two different pieces of syntax.
# 'args' is a variable, and '*' is a piece of syntax that *operates* on the thing to the right of it. We call it the 'splat operator'.
# If I were reading the line, I would break it into three distinct parts immediately:
# 1. The '=' operator, which is for assigning values to variables.
# 2. The right side of the '=' operator, '*args', which can be broken into three pieces as well.
# 3. The left side of the '=' operator, 'arg1, arg2' which could also be further decomposed.
# The '=' tells me that this line is going to assign a value to a variable, with the result of the expression on the right of the '=' going to be assigned to the name(s) on the left side
# You can infer that the right side of the '=' will execute first, because you can't really assign the result of an expression that wasn't executed.
    arg1, arg2 = args
# The '#{}' tells Ruby to include the value of the variable in the string that you are defining. 
# Puts is actually a method. So you're calling the 'puts' method with the argument of the string you're defining.
    puts "arg1: #{arg1}, arg2: #{arg2}"
end

Print_two("horse", "carriage")