# This method asks the user for a number,
# performs some calculations on the number,
# and always returns the answer "3"

# Uses one variables: user_number

#define method "numerology"
def numerology
	# Prompt user for a number and get the response
	puts "Give me a number"
	user_number = gets.to_i

	# Calculate answer and display it
	puts "The answer is: " + (((((user_number + 5) * 2) - 4) / 2) - user_number).to_s
end

# Call the method
numerology	
