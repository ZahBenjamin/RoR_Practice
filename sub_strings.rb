# Implement a method SUBSTRINGS that takes a word as the first argument and then an array of valid substrings (dictionary) as second argument
# Return hash listing each substring in original string and how many times it was found

def substring(input, dictionary)
  output_hash = []
  dictionary.each do |substring|
    if input.downcase.include?(substring)
      output_hash[substring] = input.downcase.scan(substring).count
    end
  end
  output_hash
end