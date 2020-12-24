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

def substrings(str)
  result = []
  (0...str.size).each do |index|
    substrings = str[index..-1]
    result << leading_substrings(substrings)
  end
  result.flatten
end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]