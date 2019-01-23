text = "Mateusz to wie i nie wie"
text = text.gsub("wie", "moze")
puts text

puts "Enter first name: "
first_name = gets.chomp
puts "Enter last name: "
last_name = gets.chomp
full_name = first_name + " " + last_name

puts "Your first name is #{first_name}"
puts "Your last name is #{last_name}"
puts "Name reversed: #{full_name.reverse!}"
puts "You have #{first_name.length + last_name.length} chars in it"

puts "Is first name equals to last name? #{first_name.eql(last_name)}"