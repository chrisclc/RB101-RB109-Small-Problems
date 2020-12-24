#1 Repeat Yourself
def repeat(msg, num)
  num.times {puts msg}
end

#2 Odd
def is_odd?(num)
  num % 2 != 0
end

#3 List of Digits
def digit_list(num)
  num.to_s.split('').map{ |str| str.to_i}
end

#4 How Many?
def count_occurrences(array)
  occurrences = {}
  array.each do |key|
    occurrences[key] = array.count(key)
  end
  occurrences.each do |key, value|
    puts "#{key} => #{value}"
  end
end 

#5 Reverse It (Part 1)
def reverse_sentence(msg)
  msg.split(' ').reverse.join(' ')
end

#6 Reverse It (Part 2)
def reverse_words(msg)
  reverse_arr = msg.split.each do |words|
                  words.reverse! if words.size >= 5
                end
  reverse_arr.join(' ')
end

#7 Stringy Strings
def stringy(num)
  result = []
  num.times do |index|
    if index.even?
      result << 1
    else
      result << 0
    end
  end
  result.join
end

#8 Array Average
def average(arr)
  arr.sum / arr.size
end

#9 Sum of Digits
def sum(num)
  num_arr = num.to_s.split('')
  total = 0
  num_arr.each {|element| total += element.to_i}
  total
end

#10 What's my Bonus?
def calculate_bonus(salary, determinator)
  if determinator == true
    salary / 2
  else
    0
  end
end
