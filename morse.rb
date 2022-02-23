MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
  '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
  '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
  '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..' => 'Z'
}.freeze

def decode_char(char)
  MORSE_CODE[char]
end

def decode_word(word)
  arr = []
  word.split.each do |morse_char|
    arr.push(MORSE_CODE[morse_char])
  end
  arr.join
end

def decode_message(morse_code)
  morse_code
    .split('   ')
    .map do |word|
      decode_word(word)
    end
    .join(' ')
end
puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')

# A BOX FULL OFRUBIES
