def caesar_cipher(message, shift = 0)
  message.each_char do |c|
    unless c == " "
      c = c.ord + shift > 122 ? (c.ord + shift - 26).chr : (c.ord + shift).chr
    end
     print c
  end
end

caesar_cipher("What a string", 5)
