# CaesarCypher
In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, Caesar's code, or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.
Exemples

- caesar_cipher("Hello, how are you ?", 1)
	=> return "Ifmmp, ipx bsf zpv ?"
- caesar_cipher("C'est l'histoire de la vie, le cycle eternel", 7)
  => return "J'lza s'opzavpyl kl sh cpl, sl jfjsl lalyuls"
- caesar_cipher("This is the rythm of the night", -2)
  => return "Rfgq gq rfc pwrfk md rfc lgefr"
