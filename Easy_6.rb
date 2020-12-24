#1 Cute angles
DEGREE = "\xC2\xB0"

def dms(num)
  degree = num.floor
  degree != 0 ? mins = (num % degree) * 60 : mins = 0
  mins.floor != 0 ? secs = (mins % mins.floor) * 60 : secs = 0
  format("%01d#{DEGREE}%02d'%02d\"", degree, mins.floor, secs.floor)
end

#2 Delete vowels
def remove_vowels(arr)
  arr.map{ |str| str.delete('AEIOUaeiou') }
end

#3 Fibonacci Number Location By Length
def find_fibonacci_index_by_length(num)
  fibonacci = [1, 1]
  loop do
    fibonacci << (fibonacci[-2] + fibonacci[-1])
    break if fibonacci[-1].to_s.length == num
  end
  fibonacci.size
end

#4 Reversed Arrays (Part 1)
def reverse!(list)
  index = list.length
  loop do
    break if index == 0
    list << list.delete_at(index -= 1)
  end
  list
end

#5 Reversed Arrays (Part 2)
def reverse(list)
  new_list = []
  index = -1
  loop do
    break if new_list.size == list.size
    new_list << list[index]
    index -= 1
  end
  new_list
end

#6 Combining Arrays
def merge(arr1, arr2)
  new_arr = []
  arr1.each { |element| new_arr << element }
  arr2.each { |element| new_arr << element }
  new_arr.uniq
end

#7 Halvises
def halvsies(arr)
  outer_arr = []
  inner_arr1 = []
  inner_arr2 = []
  arr.each_with_index do |element, index|
    if index < arr.size / 2.0
      inner_arr1 << element
    else
      inner_arr2 << element
    end
  end
  outer_arr << inner_arr1 << inner_arr2
end

#8 Find the Duplicate
def find_dup(arr)
  dup = nil
  single_num = []
  arr.each do |num|
    if single_num.include?(num)
      dup = num
    else
      single_num << num
    end
  end
  dup
end

#9 Does My List Include This?
def include?(arr, value)
  !(arr.select { |element| element == value }).empty?
end

#10 Right Triangles
def triangle(num)
  blank_count = num
  asterisk_count = 0
  loop do
    puts " " * blank_count + "*" * asterisk_count
    blank_count -= 1
    asterisk_count += 1
    break if asterisk_count > num
  end
end