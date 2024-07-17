
def caesar_cipher(string, shiftNum)
   msg = ""
   # Reduce shiftNum if is it larter than 26 or keep string if shiftNum is 26
   if shiftNum == 26
    return string
   elsif shiftNum > 26
    shiftNum = shiftNum%26
   end

  # Check if char is a letter
  string.each_byte do |byte|
    ascii = byte 
    # Adjust if uppercase
    if byte >= 65 && byte <= 90
      ascii += shiftNum
      # Loop back to "A"
      if ascii > 90
        ascii -= 26
      end
    # Adjust if lowercase
    elsif byte >= 97 && byte <= 122
      ascii += shiftNum
      # Loop back to "a"
      if ascii > 122
        ascii -= 26
      end
    end
    msg += ascii.chr
  end
  msg
end