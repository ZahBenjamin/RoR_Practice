def ceaser_cipher(input, shift)
  output = input.chars.map do |char|
   if char.between?("a", "z")
    shifted = ((char.ord - "a".ord + shift) % 26) + "a".ord
    shifted.chr
   elsif char.between?("A", "Z")
    shifted = ((char.ord + - "A".ord + shift) % 26) + "A".ord
    shifted.chr
   else
    char
   end
  end

  output.join
end



puts ceaser_cipher("Hello, world", 3)


