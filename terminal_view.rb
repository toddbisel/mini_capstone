require "http"

system "clear"

puts "Which product would you like to see?"
puts "[1] All Product Available"
puts "[2] Thunderfury, Blessed Blade of the Windseeker"
puts "[3] Thori'dal, the Stars' Furyr"
puts "[4] Val'anyr, Hammer of Ancient Kings"
puts "[5] Sulfuras, Hand of Ragnaros"

input = gets.chomp

if input == "1"
  response = HTTP.get("http://localhost:3000/api/products_url")
  puts JSON.pretty_generate(response)
elsif input == "2"
  response = HTTP.get("http://localhost:3000/api/product_one")
  product_one = response.parse["product_one"]
  pp product_one
elsif input == "3"
  response = HTTP.get("http://localhost:3000/api/product_one")
  product_two = response.parse["product_two"]
  pp product_two
elsif input == "4"
  response = HTTP.get("http://localhost:3000/api/product_one")
  product_three = response.parse["product_three"]
  pp product_three
elsif inpit == "5"
  response = HTTP.get("http://localhost:3000/api/product_one")
  product_four = response.parse["product_four"]
  pp product_four
end