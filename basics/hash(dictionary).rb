my_hash = {1 => "jedynka", 2 => "dwojka", 3 => "trojka"}

p my_hash[2]

another_hash = {a:1, b:2, c:3 }
p another_hash
p my_hash.keys
p my_hash.values

p my_hash.each {|k, v| puts "key class: #{k.class}, value class: #{v.class}"}

p another_hash.each {|k, v| puts "key class: #{k.class}, value class: #{v.class}"}

#dodawanie symbolu do hasha

another_hash[:d] = 4
p another_hash

#podmienianie

another_hash[:c] = "dupa"
another_hash[:a] = "kupa"
p another_hash

hash_no_strings = another_hash.select { |k,v| !v.is_a?(String)}
p hash_no_strings

#wywalenie integerów z hasha

another_hash.each{|k,v| another_hash.delete(k) if v.is_a?(Integer)}
print "no ints hash: "
p another_hash