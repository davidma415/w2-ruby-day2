documentary = "Supersize Me"
comedy = "Superbad"
drama = "12 Years a Slave"
dramedy = "Silver Linings Playbook"

puts "Rate the following movie categories from 1 to 5"
puts "Documentaries: "
doc_opt = gets.chomp.to_i
puts "Dramas: "
drama_opt = gets.chomp.to_i
puts "Comedies: "
com_opt = gets.chomp.to_i

vals = [doc_opt, drama_opt, com_opt]
str = [documentary, drama, comedy]

if doc_opt >= 4 && drama_opt <= 3 && com_opt <= 3
  puts "You should watch #{documentary}"
elsif doc_opt <= 3 && drama_opt >= 4 && com_opt >= 4
  puts "You should watch #{dramedy}"
elsif drama_opt >= 4 && doc_opt <= 3 && com_opt <= 3
  puts "You should watch #{drama}"
elsif com_opt >= 4 && doc_opt <= 3 && drama_opt <= 3
  puts "You should watch #{comedy}"
elsif vals.max == 3 && vals.uniq.length >= 2
  max_ind = vals.each_with_index.max[1]
  puts "You should watch #{str[max_ind]}"
else
  puts "Go read a book."
end
