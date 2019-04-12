class Proverbs
    attr_reader :array

    def initialize(array)
        @array=array
    end
    


    def create_proverb
        puts "For want of a #{@array[0]} the #{@array[1]} was lost."
        puts "For want of a #{@array[1]} the #{@array[2]} was lost."
        puts "For want of a #{@array[2]} the #{@array[3]} was lost."
        puts "For want of a #{@array[3]} the #{@array[4]} was lost."
        puts "For want of a #{@array[4]} the #{@array[5]} was lost."
        puts "For want of a #{@array[5]} the #{@array[6]} was lost."
        puts "And all for the want of a #{@array[0]}."
    end
end




my_proverb = Proverbs.new (["house", "mouse", "lice", "rice","tea", "serendipity"])
my_proverb.create_proverb







=begin
For want of a nail the shoe was lost.
For want of a shoe the horse was lost.
For want of a horse the rider was lost.
For want of a rider the message was lost.
For want of a message the battle was lost.
For want of a battle the kingdom was lost.
And all for the want of a nail.
 the program should create new proverbs, taking all the nouns as inputs
 (nail, shoe, horse, rider, message, kingdom, so 6 in all)

=end