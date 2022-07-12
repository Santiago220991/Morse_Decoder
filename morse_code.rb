ABC={
    ".-" => "A",
    "-..." => "B",
    "-.-." => "C",
    "-.." => "D",
    "." => "E",
    "..-." => "F",
    "--." => "G",
    "...." => "H",
    ".." => "I",
    ".---" => "J",
    "-.-" => "K",
    ".-.." => "L",
    "--" => "M",
    "-." => "N",
    "---" => "O",
    ".--." => "P",
    "--.-" => "Q",
    ".-." => "R",
    "..." => "S",
    "-" => "T",
    "..-" => "U",
    "...-" => "V",
    ".--" => "W",
    "-..-" => "X",
    "-.--" => "Y",
    "--.." => "Z"
    }

def decode_char(letter)
    ABC[letter] 
end

def decode_word(word)
    result=""
    letters=word.split(" ")
    letters.each do |letter|
        result+=decode_char(letter)
    end
    result
end

def decode(sentence)
    result=""
    words=sentence.split("   ")
    words.each do |word|
        result+=decode_word(word)+" "
    end
    result.strip!
end

puts (decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."))