#1 Combine Two Lists
def interleave(arr1, arr2)
  new_arr = []
  index = 0
  loop do
    new_arr << arr1[index]
    new_arr << arr2[index]
    index += 1
    break if index == arr1.size
  end
  new_arr
end

#2 Lettercase Counter
def letter_case_count(str)
  result = { lowercase: 0, uppercase: 0, neither: 0 }
  lowercase = str.count'a-z'
  uppercase = str.count'A-Z'
  neither = str.count'^a-zA-Z'
  result[:lowercase] = lowercase
  result[:uppercase] = uppercase
  result[:neither] = neither
  result
end

#3 Capitalize Words
def word_cap(str)
  new_arr = str.split' '
  new_arr.map {|word| word.capitalize}.join' '
end

#4 Swap Case
def swapcase(str)
  swapcase_arr = str.chars.map do |letter|
    letter == letter.downcase ? letter.upcase : letter.downcase
  end
  swapcase_arr.join
end

#5 Staggered Caps (Part 1)
def staggered_case(str)
  result = ''
  str.chars.each_with_index do |char, index|
    index.even? ? result << char.upcase : result << char.downcase
  end
  result
end

#6 Staggered Caps (Part 2)
def staggered_case(str)
  result = ''
  non_alphabet = false
  case_counter = 0
  str.chars do |char|
    char =~ /[a-z]/ || char =~ /[A-Z]/ ? non_alphabet = false : non_alphabet = true
    case_counter.even? ? result << char.upcase : result << char.downcase
    case_counter += 1 if non_alphabet == false
  end
  result
end

#7 Multiplicative Average
def show_multiplicative_average(arr)
  product = 1.0
  arr.each { |num| product *= num }
  result = sprintf('%.3f', product / arr.size)
  puts "The result is #{result}"
end

#8 Multiply Lists
def multiply_list(arr1, arr2)
  result = []
  arr1.each_with_index { |num, index| result << num * arr2[index] }
  result
end

#9 Multiply All Pairs
def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |inner_arr| inner_arr.inject(1, :*) }.sort
end

#10 The End Is Near But Not Here
def penultimate(str)
  arr = str.split' '
  arr[-2]
end