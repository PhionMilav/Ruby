
numbers = [27, 48, 51, 68, 72, 77, 83]
index = 0
while index < numbers.length
    puts numbers[index]
    index +=1
end

def total(numbers)
    amount = 0
    index = 0
    while index < numbers.length
        amount += numbers[index]
        index += 1
    end
    amount
end

def refund(numbers)
    amount = 0
    index = 0
    while index < numbers.length
        amount -= numbers[index]
        index += 1
    end
    amount
end

=begin
def show_one_third(numbers)
    index = 0
    while index < numbers.length
        amount_off = numbers[index] 
        puts format ("One third: #{@amount_off}")
        index += 1
    end
end
=end


puts total(numbers)
puts refund(numbers)
#puts show_one_third(numbers)

def do_something(array, operation)
    if operation == "total" or operation == "refund"
        amount = 0
    end
    index = 0
    while index < array.length
        if operation == "total"
            amount += array[index]
        elsif operation == "refund"
            amount -= array[index]
        end

        index += 1
    end

    if operation == "total" or operation == "refund"
        return amount
    end
end
