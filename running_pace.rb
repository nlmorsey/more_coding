def run_fast(*arguments)
   a, b, c, d = arguments
   puts "I run a #{a*b*c*d}-minute mile."
end

run_fast(1, 2, 3, 4)

def calculate_your_pace(*arguments)
    distance_ran, running_time, unit_of_time, unit_of_distance = arguments
    puts "I ran a #{running_time/distance_ran}-#{unit_of_time} #{unit_of_distance}."
end

calculate_your_pace(2, 60, "minute", "mile")

def method(argument)
    puts "This variable is #{argument}."
end

method("fishy")

def method()
    print "Congratulations! You finished the race. How many miles? "
    distance = gets.chomp.to_i
    print "How many minutes? "
    time = gets.chomp.to_i
    puts "You ran #{time/distance} minutes per mile!"
end

method()

p gets
p gets.chomp