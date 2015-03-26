# The FizzBuzz application, written in Ruby
#
# Every recent programming class I've taken
# has included the FizzBuzz game as an exercise.
# So I decided to include it in my portfolio.

# str will be the string printed for each number.
# Initialize it to an empty string
str = ""

# Initialize the counter
i = 1 

# Loop from 1 to 100
while (i <= 100) 

	# If the number is divisible by 3, set the
	# string equal to "Fizz"
	if (i % 3 == 0) 
		str = "Fizz"
	end	
	
	# If the number was divisible by 3, the string
	# already equals "Fizz"; otherwise it is empty.
	# If the number is divisible by 5, set the
	# string equal to the string plus "Buzz".  This
	# creates the "FizzBuzz" string for numbers 
	# that are divisible by both 3 and 5
	if (i % 5 == 0)
		str += "Buzz"
	end
	
	# If the string has not been set to either "Fizz",
	# "Buzz" or "Fizzbuzz", then we need to print the
	# number.  Convert the number to a string and then
	# set our print string to the result.
	if str.length == 0 then
		str = i.to_s
	end
	
	# Print the resulting string
	puts str
	
	# Reinitialize our string variable str
	str = ""
	
	# Increment the counter
	i += 1
end	