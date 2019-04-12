class NucleoidCount
    attr_reader :array

    def initialize(array)
        @array = array
    end

    def count_em
        nucleoids = {}

    
        @array.each do |item|
            if nucleoids[item] != nil
            nucleoids[item] +=1
            elsif
            nucleoids[item] = 1
            end
        end
        puts nucleoids
    end

end


first_count = NucleoidCount.new(["C", "G","A", "T", "T", "A", "C"])
first_count.count_em
