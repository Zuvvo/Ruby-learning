zip_codes = {
    "Leczna" => "21-010",
    "Swidnik" => "21-040",
    "Lubartow" => "21-100",
    "Parczew" => "21-200",
    "Lukow" => "21-400",
    "Wlodawa" => "22-200",
    "Krasnystaw" => "22-300"
}

def get_city_names(zip_codes_hash)
  zip_codes_hash.keys
end

def get_zip_code(zip_codes_hash, key)
  zip_codes_hash.each do |k, v|
    if k == key
      return v
    end
  end
  "Can't find"
end

def get_zip_code2(zip_codes_hash, key)
  if(zip_codes_hash.include?(key))
    zip_codes_hash[key]
  else
    "Can't find"
  end
end

loop do
  puts "Do you want to get zip code based on a city name?(Y/N)"
  input = gets.chomp.downcase
  if input != "y"
    break
  else
    puts get_city_names(zip_codes)
    puts "Enter your selection: "
    input = gets.chomp.downcase
    input.capitalize!
    puts get_zip_code(zip_codes, input)
  end

end