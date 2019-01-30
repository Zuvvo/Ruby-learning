numbers = (1..100).to_a.shuffle

p numbers.select{|number| number.odd?}