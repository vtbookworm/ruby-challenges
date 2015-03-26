puts  "Using strings for all keys"

my_array = Array.new
my_array[0] = {"name"=>"Emily", "city"=>"Nashville"}
my_array[1] = {"name"=>"Doug", "city"=>"Chicago"}
my_array[2] = {"name"=>"Julie", "city"=>"Gatlinburg"}
my_array[3] = {"name"=>"Susan", "city"=>"Boston"}
my_array[4] = {"name"=>"Mark", "city"=>"Seattle"}

i = 0
while (i < my_array.length) do
	my_name = my_array[i]["name"]
	my_city = my_array[i]["city"]
	puts "#{my_name} is from #{my_city}"
	i += 1
end

puts "\n\nUsing symbols for keys and => for assignment"

my_array[0] = {:name => "Emily", :city => "Nashville"}
my_array[1] = {:name => "Doug", :city => "Chicago"}
my_array[2] = {:name => "Julie", :city => "Gatlinburg"}
my_array[3] = {:name => "Susan", :city => "Boston"}
my_array[4] = {:name => "Mark", :city => "Seattle"}
my_array[5] = {:name => "Sam", :city => "Denver"}

i = 0
while (i < my_array.length) do
	my_name = my_array[i][:name]
	my_city = my_array[i][:city]
	puts "#{my_name} is from #{my_city}"
	i += 1
end

puts "\n\nUsing symbols only"

my_array[0] = {name: "Emily", city: "Nashville"}
my_array[1] = {name: "Doug", city: "Chicago"}
my_array[2] = {name: "Julie", city: "Gatlinburg"}
my_array[3] = {name: "Susan", city: "Boston"}
my_array[4] = {name: "Mark", city: "Seattle"}
my_array[5] = {name: "Sam", city: "Denver"}
my_array[6] = {name: "Cynthia", city: "Las Vegas"}

i = 0
while (i < my_array.length) do
	my_name = my_array[i][:name]
	my_city = my_array[i][:city]
	puts "#{my_name} is from #{my_city}"
	i += 1
end