MORSE_CODE = { 
  '.-' =>     'A',
  '-...' =>   'B',
  '-.-.' =>   'C',
  '-..' =>    'D',
  '.' =>      'E',
  '..-.' =>   'F',
  '--.' =>    'G',
  '....' =>   'H',
  '..' =>     'I',
  '.---' =>   'J',
  '-.-' =>    'K',
  '.-..' =>   'L',
  '--' =>     'M',
  '-.' =>     'N',
  '---' =>    'O',
  '.--.' =>   'P',
  '--.-' =>   'Q',
  '.-.' =>    'R',
  '...' =>    'S',
  '-' =>      'T',
  '..-' =>    'U',
  '...-' =>   'V',
  '.--' =>    'W',
  '-..-' =>   'X',
  '-.--' =>   'Y',
  '--..' =>   'Z',
};

def decode_char(morse_char)
  MORSE_CODE[morse_char]
end

def decode_word(morse_word)
  morse_chars = morse_word.split(" ")
  decoded_word = morse_chars.map { |char| decode_char(char) }.join
  decoded_word
end

def decode(message)
  morse_words = message.split("   ")
  decoded_message = morse_words.map { |word| decode_word(word) }.join(" ")
  decoded_message
end

