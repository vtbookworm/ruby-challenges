if 1 + 1 == 2
	puts "1 and 1 does indeed equal 2"
end

my_name = 'Vicki'
if my_name == 'Skillcrush'
	puts "Hellooooo, Skillcrush"
else
	puts "Oops, I thought your name was Skillcrush. Sorry about that., #{my_name}!"
end
	
fav_color = "blue"
if (fav_color == 'red')	
	puts "Red like fire!"
elsif (fav_color == 'orange')	
	puts "Orange like, well... an orange."
elsif (fav_color == 'yellow')
	puts "Yellow daffodils are so pretty in the spring!"
elsif (fav_color == 'green')
	puts "Have you been to the Emerald City in Oz?"
elsif (fav_color == 'blue')
	puts "Blue like the sky!"
elsif (fav_color == 'purple')
	puts "Purple plums are the tastiest."
else
	puts "Hmm, well I don't know what that color is!"
end

weather = "sunny"
case weather
	when "sunny" then puts "Wear sunscreen and have fun"
	when "rainy" then puts "Take an umbrella"
	when "snowy" then puts "Wear boots"
	else puts "I don't know!"
end