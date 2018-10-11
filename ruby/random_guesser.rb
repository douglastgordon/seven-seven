guess = 0
num = rand(10) + 1
puts "Guess a number between one and ten"
while guess != num
  guess = gets.chomp.to_i
  if guess == num
    puts "You got it!"
  elsif guess > num
    puts "a little lower..."
  else
    puts "a little higher..."
  end
end

hash.entries.inject({}) do |acc, el|
  acc[el[0]] = acc[el[1]]
  acc
end


# ruby random_guesser
