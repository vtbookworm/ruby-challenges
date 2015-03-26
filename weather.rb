puts "Enter the weather for advice:"
weather = gets
weather.chomp!

case weather
	when "sunny" then 
		puts "Wear sunscreen and have fun"
	when "rainy" then 
		puts "Take an umbrella."
	when "snowy" then 
		puts "Wear boots and a warm coat."
	when "cloudy" then 
		puts "Take an umbrella just in case!"
	when "foggy" then 
		puts "Drive carefully out there!"
	when "freezing_cold" then 
		puts "Normal for Vermont in winter.  Take a warm coat."
	when "below_zero" then 
		puts "It's #{weather}!  Can't we stay home today?"
	when "hot" then 
		puts "It's #{weather}.  Can we go to the beach?"
	when "muddy" then 
		puts "Wear your mud boots!  It's mud season!"
	else 
		puts "It's #{weather}.  I don't know!"
end