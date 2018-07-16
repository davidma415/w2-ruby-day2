documentary = "Supersize Me"
comedy = "Superbad"
drama = "12 Years a Slave"
dramedy = "Silver Linings Playbook"

puts "Answer with yes or no"
puts "Do you enjoy documentaries?"
opt_one = gets.chomp.downcase
puts "Do you enjoy dramas?"
opt_two = gets.chomp.downcase
puts "Do you enjoy comedies?"
opt_three = gets.chomp.downcase

## if statements with and
if opt_one == "yes"  && opt_two == "no" && opt_three == "no" #Documentary
  puts "You should watch #{documentary}."
elsif opt_one == "yes"  && opt_two == "yes" && opt_three == "yes"
  puts "You should watch #{documentary}, #{comedy}, #{drama}, and #{dramedy}"
elsif opt_one == "no" && opt_two == "yes" && opt_three == "yes"
  puts "You should watch #{dramedy}."
elsif opt_two == "yes" && opt_one == "no" && opt_three == "no"
  puts "You should watch #{drama}."
elsif opt_three == "yes" && opt_one == "no" && opt_two == "no"
  puts "You should watch #{comedy}."
elsif opt_one == "no"  && opt_two == "no" && opt_three == "no"
  puts "Go read a book!"
end
