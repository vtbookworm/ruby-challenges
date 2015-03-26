# This script asks the user for a number,
# performs some calculations on the number,
# and returns the answer, which is always 3

# Accepts one argument: num1
# Returns the numeric value of the calculation

#define method "numerology"
def numerology(num1)
	# Calculate answer 
	(((((num1 + 5) * 2) - 4) / 2) - num1)
end

# Prompt user for a number and get the response
puts "Give me a number"
user_number = gets.to_i

# Call the method and print the answer
puts "Always " + numerology(user_number).to_s

