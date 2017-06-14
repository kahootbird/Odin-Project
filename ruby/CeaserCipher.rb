=begin
  ~Caesar Cipher~
  This program takes text and a shift value, shifting the string accordingly.
  caesar_cipher function should
=end

def caesar_cipher(cipher, shift)
  #Note: Ideally, would test for null string here.
  #Also ideally check shift must be >= 1 and <= 26 or return null
  
  #Create new boolean string to preserve case and start loop
  mybool = Array.new(cipher.length)
  cipher.each_char.with_index(0){|char, i|
    #Preserve uppercase in booleans and convert to lowercase
    mybool[i] = false
    if cipher[i].upcase == cipher[i]
      mybool[i] = true
      cipher[i] = cipher[i].downcase
    end
    #Change chr value of a-z letters for the shift
    if cipher[i].ord > 96 and cipher[i].ord < 123
      chr_convert = 0
      chr_convert = cipher[i].ord
      chr_convert = cipher[i].ord+shift
      #If great than z in ascii codes move back 26 letters to a.
      if chr_convert > 122
        chr_convert = chr_convert-26
      end
      cipher[i] = chr_convert.chr
    end
    #Convert back to uppercase
    if mybool[i] == true
      cipher[i] = cipher[i].upcase
    end
    
  }
  return cipher
end

#Quick tests
puts caesar_cipher("aBcdefghijklmnopqrstuvwxyz", 25)
puts caesar_cipher("abc", 3)
