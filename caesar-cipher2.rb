def caesarCipher2 (string, shiftNum)
  msg = ""
  upper = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
  lower = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

  string.each_char do |char|
    if upper.include?(char)
      codeIndex = upper.index(char) + shiftNum
      while codeIndex > 25
        codeIndex -= 26
      end
      msg += upper[codeIndex]
    elsif lower.include?(char)
      codeIndex = lower.index(char) + shiftNum
      while codeIndex > 25
        codeIndex -= 26
      end
      msg += lower[codeIndex]
    else
      msg += char
    end
  end
  msg
end
