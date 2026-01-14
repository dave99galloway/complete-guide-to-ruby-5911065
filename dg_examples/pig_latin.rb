VOWELS = ['a','e','i','o','u']

def pig_latin(word)
  chars = word.chars
  puts "chars: #{chars}"
  position = 0
  # VOWELS.each do |vowel|
  #   vowel_pos = chars.index(vowel)
  #   if vowel_pos != nil
      
  #     puts "found vowel #{vowel} for word :#{word} at pos: #{vowel_pos}"
  #     #break
  #   end
  # end
  vowel_pos = -1
  chars.each do | char |
    puts "checking char: #{char} in #{word}"
    VOWELS.each do | vowel |
      puts "checking vowel: #{vowel} in #{word}"
      if char == vowel
        v = chars.index(vowel)
        puts "v: #{v} for #{vowel}"
        vowel_pos = v
        break
      end      
    end 
    puts "vowel_pos:#{vowel_pos} pos: #{position} "
    if vowel_pos > -1
      position = vowel_pos
      break
    end
  end
  puts "pos: #{position}"
  suffix = word.chars
  puts "suffix: #{suffix}"
  prefix = []
  if position > 0
    suffix = word.chars[0,position]
    prefix = word.chars.slice(position,chars.length-position)
  end
  puts "suffix: #{suffix}"
  puts "prefix: #{prefix}"
  prefix.concat(suffix).join + "ay"
end

words = ["pig","latin","elevator","glove","where"]

words.each do |word|
  puts word + ': ' + pig_latin(word)
end
