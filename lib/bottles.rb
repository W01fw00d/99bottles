#!/usr/bin/env ruby

class Bottles
    def initialize()
    end
    
    def verse(n_bottles)
        n_bottles_after = n_bottles - 1
        if n_bottles_after === 1
            bottles_name_after = "bottle"
        else
            bottles_name_after = "bottles"
        end
      
        return "#{n_bottles} bottles of beer on the wall, #{n_bottles} bottles of beer.\nTake one down and pass it around, #{n_bottles_after} #{bottles_name_after} of beer on the wall.\n"
    end
end