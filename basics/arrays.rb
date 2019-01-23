# array = [1, 2, 3 , 4, 5, 6, 7, 8]
array = (1..8).to_a

letters = ("a".."z").to_a

p array
p array.shuffle

puts

letters.shuffle!
p letters.length

array << 9
p array

array.unshift("dupa")
p array

array.append("dupa")
array.append("dupa")
p array

array.uniq!
p array