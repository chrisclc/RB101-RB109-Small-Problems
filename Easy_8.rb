#1 Sum of Sums
def sum_of_sums(arr)
  sum = 0
  loop do
    sum += arr.sum
    arr.pop
    break if arr.size == 0
  end
  sum
end

#2 Madlibs
print 'Enter a noun: '
noun = gets.chomp

print 'Enter a verb: '
verb = gets.chomp

print 'Enter an adjective: '
adjective = gets.chomp

print 'Enter an adverb: '
adverb = gets.chomp

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

puts [sentence_1, sentence_2, sentence_3].sample

#3 Leading Substrings
def leading_substrings(str)
  result = []
  counter = 1
  loop do
    result << str[0, counter]
    counter += 1
    break if counter > str.length
  end
  result
end

#4 All Substrings
def substrings(str)
  result = []
  (0...str.size).each do |index|
    substrings = str[index..-1]
    result << leading_substrings(substrings)
  end
  result.flatten
end

#5 
