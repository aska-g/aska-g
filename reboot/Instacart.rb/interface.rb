# Shopping cart

puts "Welcome"

# list of items
store = [
  {name: "carrot", price: 2.95, category: "media"},
  {name: "milk", price: 1.95},
  {name: "banana", price: 3.95},
  {name: "cookies", price: 5.95}
]

item_index = nil
cart = []

# prints all possibilities for the user (item + price)
puts "Select your item (type in the number)\nTo checkout, type 'exit'"
store.each_with_index do |item, index|
  p "#{index+1}: #{item[:name]} $#{item[:price]}"
end

# the loop will run until user types in "exit"
while item_index != "exit"
  item_index = gets.chomp
  if item_index == "exit"
    puts "ok you're done"
  end

# adds item to the cart
  cart << (item_index.to_i - 1) unless item_index == "exit"
end

puts "Checkout"

# prints a list of items names
puts "Your items:"
cart.each do |ind|
  puts (store[ind][:name])
end

#prints a total of all items prices
total = 0
cart.each do |ind|
  item_price = store[ind][:price]
  total += item_price
end
puts "Total to pay: $#{total.round(2)}"

