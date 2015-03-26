# This script asks the user for a number,
# performs some calculations on the number,
# and always returns the answer "3"

# Uses two variables: user_number and final_number

# Prompt user for a number and get the response
puts "Give me a number"
user_number = gets

# Convert string to number using to_i
final_number = user_number.to_i

# Add five
final_number += 5

# Multiply by two
final_number *= 2

# Subtract 4
final_number -= 4

# Divide by 2
final_number /= 2

# Subtract the original number
final_number -= user_number.to_i

# Display the answer (which is always 3)
puts "The answer is #{final_number}"

