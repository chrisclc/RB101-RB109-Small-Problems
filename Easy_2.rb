#1 How old is Teddy?
teddy_ages = rand(20..200)
puts "Teddy is #{teddy_ages} years old!"

#2 How big is the room?
puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area = (length * width).round(2)
area_in_sf = (area * 10.7639).round(2)
puts "The area of the room is #{area} sqaure meters (#{area_in_sf} sqaure feet)."

#3 Tip calculator
puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
percentage = gets.chomp.to_f

tip = bill * percentage / 100
total = bill + tip
puts "The tip is #{tip.round(2)}"
puts "The total is #{total.round(2)}"

#4 When will I Retire?
puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

years_to_retire = retire_age - age
time_year = Time.new.year
retire_year = time_year + years_to_retire

puts "It's #{time_year}. You will retire in #{retire_year}."
puts "You have only #{years_to_retire} years of work to go!"

#5 Greeting a user
puts "What is your name?"
name = gets.chomp

if name.include?('!')
  modified_name = name.delete("!").upcase
  puts "HELLO #{modified_name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

#6 Odd Numbers
(1..99).each {|num| puts num if num.odd?}

#7 Even Numbers
(1..99).each {|num| puts num if num.even?}

#8 Sum or Product of Consecutive Integers
def prompt(msg)
  puts ">> #{msg}"
end

prompt "Please enter an interger greater than 0:"
num = gets.chomp.to_i

prompt "Enter 's' to compute the sum, 'p' to compute the product."
computing_method = gets.chomp

sum = (1..num).reduce(:+)
product = 1
(1..num).each {|element| product *= element}

if computing_method.downcase == 's'
  puts "The sum of the integers between 1 and #{num} is #{sum}."
elsif computing_method.downcase == 'p'
  puts "The product of the integers between 1 and #{num} is #{product}."
end

#9 String Assignment
BOB
BOB

#10 Mutation
Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo