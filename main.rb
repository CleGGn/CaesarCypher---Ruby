class Test 
  def caesar_cipher(plain_text, shift_position)
    code = ""
    #            0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15  16  17  18  19  20  21  22  23  24  25
    alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    array_length = (alphabet.length-1)
    plain_text.each_char do |character|
      # is it a letter ?
      if alphabet.include?(character.downcase)
        initial_pos = alphabet.index(character.downcase) 
        new_pos = initial_pos + shift_position

        # Are we positionned past the array length ? if yes we loop to start over
        if new_pos > array_length
          new_pos = ((initial_pos-1) - array_length) + shift_position
        end
        replacement_letter = alphabet[new_pos]
        
        # Was it an upcase letter ?
        if character == character.upcase
          code.concat(replacement_letter.upcase)
        else
          code.concat(replacement_letter)
        end
      else
        # if it's a special character we're not touching it
        code.concat(character)
      end
    end
    code
  end
end

test = Test.new

puts test.caesar_cipher("Hello, how are you ?", 1)
# return "Ifmmp, ipx bsf zpv ?"
puts test.caesar_cipher("C'est l'histoire de la vie, le cycle eternel", 7)
# return "J'lza s'opzavpyl kl sh cpl, sl jfjsl lalyuls"
puts test.caesar_cipher("This is the rythm of the night", -2)
# return "Rfgq gq rfc pwrfk md rfc lgefr"


