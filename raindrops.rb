

class Raindrops
    attr_reader :number

    def initialize(number)
        @number = number
    end

    def create_rain
        i = 0
        while i <= @number do

            if i.modulo(3).zero? 
                print "Pling "
            elsif i.modulo(4).zero? 
                print "Plong "
            elsif i.modulo(7).zero?
                print "Splash! "
            elsif i.modulo(10).zero? 
                print "Plingplong "
            else print "... "
                
            end
        i +=1
        end
    end
end



trial = Raindrops.new(20)
trial.create_rain













=begin
 The task   
write a program that differenciates between numbers according to their factor. If they have the factor 7 (divisible by 7)
let it puts pling. factor three plong. factor 10 splash. else patter.

the range thing isn't qworking, maybe do it with a for loop...?
    
=end