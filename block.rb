# LEARNING HOW TO USE BLOCKS

# FOUR PARTS:
# 1. CLASS
#   a. This class is an Integer
#   b. In this case, the Integer is 5
# 2. METHOD
#   a. This method is '.times'
#   b. The method '.times' iterates the given block 'int' times
# 3. SYNTAX OF A BLOCK
#   a. Block is delineated by 'do' and 'end'
#   b. OR the block is delineated by curly brackets '{}'
# 4. BODY OF A BLOCK 
#   a. The body of the block in this case is the method 'puts'
#   b. AND the String "Oh, hello from inside a block!"

# Prints the string five times.
# HERE YOU SEE THE SYNTAX OPTION 'A', E.G. 'DO' AND 'END'
5.times do
    puts "Oh, hello from inside a block!"
end

# Prints the string five times.
# HERE YOU SEE THE SYNTAX OPTION 'B', E.G. CURLY BRACKETS '{}'
5.times { puts "Oh, hello from inside a block!" }