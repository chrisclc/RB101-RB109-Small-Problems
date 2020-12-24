#1 Searching 101
def prompt(msg)
  puts "==> #{msg}"
end

number_collection = []
prompt "Enter the 1st number:"
num1 = gets.chomp.to_i
number_collection << num1
prompt "Enter the 2nd number:"
num2 = gets.chomp.to_i
number_collection << num2
prompt "Enter the 3rd number:"
num3 = gets.chomp.to_i
number_collection << num3
prompt "Enter the 4th number:"
num4 = gets.chomp.to_i
number_collection << num4
prompt "Enter the 5th number:"
num5 = gets.chomp.to_i
number_collection << num5
prompt "Enter the last number:"
last_num = gets.chomp.to_i

if number_collection.include?(last_num)
  puts "The number #{last_num} appears in #{number_collection}."
else
  puts "The number #{last_num} does not appear in #{number_collection}."
end

#2 Arithmetic Integer
def prompt(msg)
  puts "==> #{msg}"
end

prompt "Enter the first number:"
first_num = gets.chomp.to_i
prompt "Enter the second number:"
second_num = gets.chomp.to_i

addition = first_num + second_num
subtraction = first_num - second_num
product = first_num * second_num
quotient = first_num / second_num
remainder = first_num % second_num
power = first_num ** second_num

prompt "#{first_num} + #{second_num} = #{addition}"
prompt "#{first_num} - #{second_num} = #{subtraction}"
prompt "#{first_num} * #{second_num} = #{product}"
prompt "#{first_num} / #{second_num} = #{quotient}"
prompt "#{first_num} % #{second_num} = #{remainder}"
prompt "#{first_num} ** #{second_num} = #{power}"

#3 Counting the Number of Characters
puts "Please write word or multiple words"
words = gets.chomp
puts "There are #{words.delete(" ").size} characters in \"#{words}\"."

#4 Multiplying Two Numbers
def multiply(num1, num2)
  num1 * num2
end

#5 Squaring an Argument
def square(num1)
  multiply(num1,num1)
end

#6 Exclusive Or
def xor?(boolean1, boolean2)
  if boolean1 == true && boolean2 == false
    true
  elsif boolean1 == false && boolean2 == true
    true
  else
    false
  end
end

#7 Odd Lists
def oddities(array)
  even_index_array = []
  array.each_with_index{ |element, index| even_index_array << element if index.even?}
  even_index_array
end

#8 Palindromic Strings (Part 1)
def palindrome?(words)
  words == words.reverse
end

#9 Palindromic Strings (Part 2)
def palindrome?(words)
  words == words.reverse
end

def palindrome2?(words)
  words = words.downcase.delete("^a-z0-9")
  palindrome?(words)
end

#10 Palindromic Numbers
def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end