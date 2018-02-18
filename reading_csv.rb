require 'csv'
customers = CSV.read('customers.csv')

CSV.foreach('customers.csv') do |row|
    puts row.inspect
end

average_money_spent = Array.new
    CSV.foreach('customers.csv', converters: :numeric) do |row|
        average_money_spent << row[2] / row[1]
        # row is just an ordinary array and you can access its elements with []
    end #=> Undefined method '/' for "2548: String"
    
puts average_money_spent

CSV.foreach('customers_separated_with_semicolons.txt') do |row|
    puts row.inspect
end

puts "\n"

require 'csv'
restaurant = CSV.read('restaurant.csv')

CSV.foreach('restaurant.csv') do |row|
    puts row.inspect
end

CSV.read('restaurant.csv', col_sep: ';', converters: :numeric)

average_money_spent = Array.new
    CSV.foreach('restaurant.csv', col_sep: ';', converters: :numeric) do |row|
        p row
        average_money_spent << row[2] / row[1]
        # row is just an ordinary array and you can access its elements with []
    end #=> Undefined method '/' for "2548: String"
    
puts average_money_spent

def average_money_spent(row[1], row[2])