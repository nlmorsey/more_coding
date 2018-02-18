# p IO.read("testfile.txt")

# p File.read("testfile.txt")

# p IO.read("test.txt")

# p File.read("test.txt")

# f = "test.txt"

# f.read

# f = ARGV.read

# Blocks are chunks of code between braces [] or between do...end
# A method call is 'method.call(arguments)' e.g. invokes the method with the specified arguments, returning the method's return value.
# If the variable |f| is given, it will be passed to the opened file as an argument and the File object will automatically be closed when the block terminates.
# File.open("file.txt") do
    # block parameters, pipe symbols, they are the variables yielded to the block
    # |f|
    # the method '.write' opens the file, writes string, 
    # IO.write("testfile", "0123456789", 20) #=> 10 
    # f.write(File.open(@params['image_file'].read)
# end

# I'm guessing that whatever @params['image_file'] is doesn't have a read method.
# If it's just a filename, for instance, you have to open it and call read on the File object, e.g.
# File.open("#{RAILS_ROOT}/public/images/#{@user}.jpg", "wb") do
#  |f|
#  f.write(File.open(@params['image_file']).read)
# end

# File.open("test.txt") 
# do
#    |f|
#    f.write(File.open)
# end

# This code writes over the current file 'test.txt' with the string "Some contains"
File::open('test.txt','w') do |f|
    f << 'Some contains'
end