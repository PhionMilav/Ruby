class Animal
attr_reader :name, :age
def name=(value)
    if value == ""
        raise "Name can't be blank!"
    else 
        @name = value
    end
end
def age=(value)
    if value <0
        raise "Age can't be negative!"
    else
        @age = value
    end
end
    
def talk
    puts "#{@name} barks."
end
def move(destination)
    puts "#{@name} runs to the #{destination}"
end
def report_age
puts "#{@name} is #{@age} years old"
end
end

class Dog < Animal
    def to_s
        "#{@name} the dog, age #{@age}"
    end
end
class Bird < Animal
    def talk
        puts "#{@name} chirps."
    end
    def move(destination)
        puts "#{@name} flies to the #{destination}"
    end
end
class Cat < Animal
    def talk
        puts "#{@name} meows."
    end
end
class Armadillo < Animal
    def move(destination)
        puts "#{@name} unrolls!"
        super
    end
end

Dillo = Armadillo.new
Dillo.name = "Dillo"
Dillo.move("underground")

Lizzy = Dog.new
Lizzy.name = "Lizzy"
Lizzy.age = 2
puts Lizzy

Flop = Bird.new
Flop.name = "Flop"
Flop.age = 1
Flop.move("airport")
Flop.talk
Flop.report_age