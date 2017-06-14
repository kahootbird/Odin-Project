dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, wordlist)
  #Remove everything but a-z alphabet letters and spaces.
  string = string.gsub(/[^a-z ]/i, '')
  words = string.split()
  count = Array.new(wordlist.length)
  #set all nils to 0
  count.map! {|x| x || 0 }
  #Downcase
  words = words.map(&:downcase)
  #Now we have a-z string array, match to dictionary
  wordlist.each_with_index do |wordlist_word, wordlist_index|
    words.each do |string_word|
      #puts string_word + " " + wordlist_word + " #{wordlist_index}"
      if wordlist_word == string_word
        count[wordlist_index] += 1
      end
      #puts "#{count[0]} #{count[1]} "
    end
  end
  #Remove zeros and dictionary matching zeros.
  count.each_with_index do |y, y_index|
  count.each_with_index do |x, x_index|
    if x == 0
      count.delete_at(x_index)
      wordlist.delete_at(x_index)
      #puts "x: #{x} x_index: #{x_index}"
    end
    #puts "WITHOUT ZERO: #{x}"
  end
end
  result = Hash[wordlist.zip count]
  return result
end
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

