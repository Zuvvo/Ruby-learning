array = ["mat", 1, 2, 3 , 4, 5, 6, 7, 8]
print "input: "
p array

print ".empty?  "
p array.empty?

print ".include?(\"matt\")  "
p array.include?("matt")

# wywala ostatni wyraz z tablicy
last_element = array.pop
20.times{print "-"}
puts
p last_element
p array
p array.join

string_example = array.join(":::")
p string_example

next_array = string_example.split(":::")
p next_array

str = %w(przykladowanie zdanie do pokazania co nic nie robi)
p str

str.each do |word|
#wrong way of doing foreach loop
  print "-"
end

puts

#better way of doing foreach loop
str.each{|word| print word + " "}
puts

numbers = (1..100).to_a.shuffle
p numbers.select{|number| number.odd?}