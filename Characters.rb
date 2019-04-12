class Characters
attr_reader :name, :batch_number, :age 
def name=(value)
    if value== " "
        @name = "An unknown person"
    else
        @name = value
    end
end
def batch_number=(value)
    if value < 0 
        @batch_number = "CLASSIFIED"
    else
        @batch_number=value
    end
end
def age=(value)
    if value < 0 
        @age = "a not specified number of"
    else
        @age = value
    end
end

def initialize(name = " ", batch_number = -3, age = -3)
    self.name = name
   self.batch_number = batch_number
    self.age = age
    puts "#{@name} has the batch number #{@batch_number} and is #{@age} years old."
end

end


Fin = Characters.new("Fin Marx", 83, 21)
Unknown = Characters.new()