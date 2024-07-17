
def caesar_cipher(string, shiftNum)
   msg = ""
   # For negative shiftNum
   while shiftNum < 0
    shiftNum += 26
   end

  # Check if char is a letter
  string.each_byte do |byte|
    ascii = byte 
    # Adjust if uppercase
    if byte >= 65 && byte <= 90
      ascii += shiftNum
      # Loop back to "A"
      while ascii > 90
        ascii -= 26
      end
    # Adjust if lowercase
    elsif byte >= 97 && byte <= 122
      ascii += shiftNum
      # Loop back to "a"
      while ascii > 122
        ascii -= 26
      end
    end
    msg += ascii.chr
  end
  msg
end