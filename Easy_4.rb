#1 Short Long Short
def short_long_short(str1, str2)
  str1.size < str2.size ? str1 + str2 + str1 : str2 + str1 + str2
end

#2 What Century is That?
def century(year)
  num = (year - 1) / 100 + 1
  century = num.to_s + suffix(num)
end

def suffix(num)
  return suffix = 'th' if [11, 12, 13].include?(num % 100)
  case num.to_s[-1]
  when '1' then 'st'
  when '2' then 'nd'
  when '3' then 'rd'
  else 'th'
  end
end

#3 Leap Years (Part 1)
def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
end

#4 Leap Years (Part 2)
def leap_year?(year)
  return year % 4 == 0 if year < 1752
  (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
end

#5 Multiples of 3 and 5
def multisum(num)
  arr = [*1..num]
  multiples_3_5 = arr.select{ |ele| ele % 3 == 0 || ele % 5 == 0}
  multiples_3_5.sum
end

#6 Running Totals
def running_total(arr)
  total_arr = []
  counter = 1
  loop do
    break if counter > arr.size
    total_arr << arr.take(counter).sum
    counter += 1
  end
  total_arr
end

#7 Convert a String to a Number!
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}
HEX = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
  'F' => 15
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def hexadecimal_to_integer(string)
  digits = string.chars.map { |char| HEX[char.upcase] }

  value = 0
  digits.each { |digit| value = 16 * value + digit }
  value
end

#8 Convert a String to a Signed Number!
def string_to_signed_integer(string)
  signed = 1
  if string.include? '-'
    signed = -1
    string.delete!('-')
  elsif string.include? '+'
    string.delete!('+')
  end

  string_to_integer(string) * signed
end

#9 Convert a Number to a String!
def integer_to_string(num)
  num.digits.reverse.join
end

#10 Convert a Signed Number to a String!
def signed_integer_to_string(num)
  sign = ''
  case 
  when num > 0 
    sign << '+'
  when num < 0 
    sign << '-'
    num = -num
  end

  sign << integer_to_string(num)
end

