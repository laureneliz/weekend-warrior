
# apologies to my classmates whose homework I had to read to complete this...
# without it I would still be crying, probably a lot.

class Xmas

@@ordinals = ["first", "second", "third", "fourth", "fifth",
            "sixth", "seventh", "eighth", "ninth", "tenth",
            "eleventh", "twelfth"]

@@gifts_day_one = ["a partridge in a pear tree"]

@@gifts_array = [
  "and a partridge in a pear tree",
  "two turtle doves",
  "three french hens",
  "four calling birds",
  "FIVE GOLDEN RINGS",
  "six geese-a-laying",
  "seven swans-a-swimming",
  "eight maids-a-milking",
  "nine ladies dancing",
  "ten lords-a-leaping",
  "eleven pipers piping",
  "twelve drummers drumming"]


 def initialize
 end

 def self.gifts(day)
  if day == 0
    return @@gifts_day_one # pesky and phrase
  else
    array = [] #empty
    tally = day
    while tally >= 0
      array << @@gifts_array[tally]
      tally -= 1
    end
    return array
  end
 end

def self.intro(day)
  return "On the #{@@ordinals[day]} day of Christmas my true love gave to me"
end

 def self.verse(day)
   verse  = self.intro(day)
   song = []
   if day == 0
     song = [verse, "#{@@gifts_day_one[day]}"]
     return song.join("\n")
   else
    (day + 2).times do |i| # why is this 2???? i have literally no idea. it is broken when it's 1. if it is 1 day should it do it 2 times, not 3?
      song.unshift("#{@@gifts_array[i]}")
    end
   end
   song[0] = verse # add the opening verse at the beginning
   return song.join("\n") # join the elements of an array together in a string. 
 end

end



puts Xmas.verse(0)
