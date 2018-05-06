#!/usr/bin/env ruby

class Bottles
    def initialize()
    end
    
    def verse(n_bottles)
        n_bottles_after = n_bottles - 1
      
        return getFirstVerse(n_bottles) + getSecondVerse(n_bottles_after)
    end
    
    def getFirstVerse(n_bottles)
        return "#{getBottles(n_bottles)} of beer on the wall, #{getBottles(n_bottles)} of beer.\n".capitalize
    end
        
    def getSecondVerse(n_bottles)
        if n_bottles >= 0
            verse = "Take #{getDownBottle(n_bottles)} down and pass it around, #{getBottles(n_bottles)} of beer on the wall.\n"
        else
            verse = "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
        end
            
        return verse
    end
    
    def getBottles(n_bottles)
        if n_bottles === 0
            bottles = "no more bottles"
        else
            bottles = "#{n_bottles} #{getBottlesName(n_bottles)}"
        end
            
        return bottles
    end
    
    def getBottlesName(n_bottles)
        if n_bottles === 1
            bottles_name = "bottle"
        else
            bottles_name = "bottles"
        end
        
        return bottles_name
    end
    
    def getDownBottle(n_bottles)
        if n_bottles === 0
            down_bottle = "it"
        else
            down_bottle = "one"
        end
            
        return down_bottle
    end
end