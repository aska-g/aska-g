# welcome
# - make an array with horses
# select a horse to bet on
# run the race
# print the results

user_horse = nil
computer_horse = 1

while user_horse != computer_horse


  horses = %w(silver golden jackie)
  puts "Choose the horse you want to bet on (type number)"

  horses.each_with_index do |horse, index|
    puts "#{index+1}: #{horse}"
  end

  user_pick = gets.chomp.to_i - 1

  user_horse = horses[user_pick]
  computer_horse = horses[rand(horses.length)]  #could also be horses.rand

  if user_horse == computer_horse
    puts "You won!!! #{user_horse} is number 1!!!"
  else puts "No luck this time, the winning horse was #{computer_horse}"
  end

end
