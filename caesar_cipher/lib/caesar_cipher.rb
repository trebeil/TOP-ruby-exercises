#chr e #ord
def caesar_cipher(string, shift_factor)
  array = string.split("").map do |char|
    if (char.ord >=65 && char.ord <= 90)
      (65 + (char.ord + shift_factor - 65) % 26).chr
    elsif (char.ord >=97 && char.ord <= 122)
      (97 + (char.ord + shift_factor - 97) % 26).chr
    else
      char
    end
  end
  array.join("")
end

puts caesar_cipher("What a string!", -1)