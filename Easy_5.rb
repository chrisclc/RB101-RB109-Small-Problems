#1 ASCII String Value
def ascii_value(string)
  value = 0
  string.chars.each { |word| value += word.ord }
  value
end

#2 After Midnight (Part 1)
def time_of_day(num)
  hours = (num / 60) % 24
  mins = num % 60
  hours.to_s.size == 1 ? hours_str = '0' + hours.to_s : hours_str = hours.to_s
  mins.to_s.size == 1 ? mins_str = '0' + mins.to_s : mins_str = mins.to_s
  time = "#{hours_str}:#{mins_str}"
end

#3 After Midnight (Part 2)
def after_midnight(str)
  time_arr = str.split(':').map { |num| num.to_i }
  value = time_arr[0] * 60 + time_arr[1]
  value % 1440
end

def before_midnight(str)
  time_arr = str.split(':').map { |num| num.to_i }
  value = (24 - time_arr[0]) * 60 - time_arr[1]
  value % 1440
end

#4 Letter Swap
def swap_each_word(arr)
  arr_first = arr.shift
  arr_last = arr.pop
  arr.unshift(arr_last).push(arr_first).join('')
end

def swap(str)
  arr = str.split(' ').map { |word| word.split('') }
  arr.map { |inner_arr| swap_each_word(inner_arr)}.join(' ')
end

#5 Clean up the words
def cleanup(str)
  str.gsub(/[^a-z]/, ' ').squeeze
end

def cleanup(str)
  new_str = ''
  str.chars.each do |char|
    if ('a'..'z').include?(char)
      new_str << char
    else
      new_str << ' ' unless new_str[-1] == ' '
    end
  end
  new_str
end

#6 Letter Counter (Part 1)
def word_sizes(str)
  result = {}
  str.split(' ').each do |word|
    if result.has_key?(word.size)
      result[word.size] += 1
    else
      result[word.size] = 1
    end
  end
  result
end

#7 Letter Counter (Part 2)
def word_sizes(str)
  result = {}
  str.split(' ').each do |word|
    if result.has_key?(word.delete('^A-Za-z').size)
      result[word.delete('^A-Za-z').size] += 1
    else
      result[word.delete('^A-Za-z').size] = 1
    end
  end
  result 
end

#8 Alphabetical Numbers
ALPHABETIC_NUMBER = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 
                      5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine',
                      10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
                      15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen' }

def alphabetic_number_sort(arr)
  alphabetic_arr = []
  result = []
  arr.each do |num|
    alphabetic_arr << ALPHABETIC_NUMBER[num]
  end
  alphabetic_arr.sort.each do |word|
    result << ALPHABETIC_NUMBER.key(word)
  end
  result
end

#9 ddaaiillyy ddoouubbllee
def crunch(str)
  new_str = ''
  str.chars.each do |char|
    new_str << char unless new_str[-1] == char
  end
  new_str
end

#10 Bannerizer
def print_in_box(str)
  puts "+-#{"-" * str.length}-+"
  puts "| #{" " * str.length} |"
  puts "| #{str} |"
  puts "| #{" " * str.length} |"
  puts "+-#{"-" * str.length}-+"
end

