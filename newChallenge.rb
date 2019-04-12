class Testing
attr_reader :number, :array

def initialize(number="",array="")
    # initializes our instances   
        @number = number
        @array = array
end


def test_set 
   #checks if you've given a number and an array and alerts if not
    if
        @number == ""
        puts "Please give me the number of test you want to run and the array you'd like to test."
        exit
    end

    if @array == ""
        puts "Please give me the number of test you want to run and the array you'd like to test."
        exit
    end

    # randomizes the array, partitiones it into a set consisting of test and training data, prints the first set
    shuffled_array = @array.shuffle
    partitioned_array = shuffled_array.partition.with_index{|_,index| index<2} 
    print "#{partitioned_array}\n"
    n = 1
    
    # after the first set, n is set to one and a while loop repeats the process for as long as n is smaller than number
    # and smaller than half of the arrays length
    # n is incremented at the end of each loop
    while n < @number && n < (@array.length/2) do
    first = shuffled_array.shift
    second = shuffled_array.shift
    new_array = shuffled_array.push(first, second)
    new_partitioned_array = new_array.partition.with_index{|_,index| index<2} 
    print "#{new_partitioned_array}\n"
    n += 1
    end
end
end

# initializing and calling 
trial = Testing.new(8, ["gramma", "learned", "from", "Yoda", "you", "have"])
trial.test_set
