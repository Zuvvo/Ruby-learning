def multiply (first_number, second_number)
  first_number * second_number
end

def both_true(first_condition, second_condition)
  output = first_condition && second_condition
  if output
    puts "It's true"
  else
    puts "It's not true"
  end
  return output
end

def condition_test(number)
  if number == 1
    puts "it's 1"
  elsif number == 2
    puts "it's 2"
  elsif number == 3
    puts "it's 3"
  elsif
  puts "I don't know!"
  end
end

#condition_test
condition_test("dupa")

#both_true
con_1 = true
con_2 = false
output = both_true(con_1, con_2)
puts output

#multiply
puts multiply(10,20)