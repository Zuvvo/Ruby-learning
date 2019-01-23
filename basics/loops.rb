20.times {print "-"}

x = 10
y = 20

while x <= y
  puts x
  x += 1
end

loop do
  puts "Press Y"
  input = gets.chomp.downcase
  break if input == "y"
end