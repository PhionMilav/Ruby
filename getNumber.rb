# Get My Number Game
# Written by Phion

puts "Welcome to 'Get My Number!'"
print "What's your name? "

input = gets
name = input.chomp
puts "Welcome, #{name}!"

puts "I have a random number between 1 and 100 for you!" 
puts "Can you guess it?"
target = rand(100) + 1

numGuesses = 0
guessedIt = false
until numGuesses == 10 || guessedIt

remainingGuesses = 10 - numGuesses

puts "#{remainingGuesses} guesses left!"
print "Make a guess: "
guess = gets.to_i

numGuesses += 1

if guess < target
    puts "Your guess was too low."
elsif guess > target
    puts "Your guess was too high."
else guess == target
    puts "Your guess was perfect! Good job, #{name}!"
    puts "You guessed my number in #{numGuesses} guesses!"
    guessedIt = true
end

end

unless guessedIt
    puts "Sorry, you didn't get my number. It was #{target}."
end