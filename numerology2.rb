#------------------------------------------------------------
# Method get_birth_path_number
# Accepts birthdate as a string in the form "MMDDYYYY"
# Returns a birth path number in the range 1..9
#------------------------------------------------------------

def get_birth_path_number(birthdate)

	total = 0;

	total += birthdate[0].to_i
	total += birthdate[1].to_i
	total += birthdate[2].to_i
	total += birthdate[3].to_i
	total += birthdate[4].to_i
	total += birthdate[5].to_i
	total += birthdate[6].to_i
	total += birthdate[7].to_i

	str4 = total.to_s
	if (total > 9)  #check for "01012001" or similar
		total = str4[0].to_i + str4[1].to_i
	end	

	if (total > 9) then
		str5 = total.to_s
		total = str5[0].to_i + str5[1].to_i
	end
	return total
end

#------------------------------------------------------------
# Method get_birth_message
# Accepts a birth number (range 1..9) and
# returns the correct numerology information as a string
#------------------------------------------------------------

def get_birth_message(birth_num)
	case birth_num
		when 1 then
			return_string = "One is the leader. The number 1 indicates the ability \nto stand alone, and is a strong vibration. Ruled by the Sun."
		when 2 then
			return_string = "This is the mediator and peace-lover. The number two \nindicates the desire for harmony. It is a gentle, considerate \nand sensitive vibration. Ruled by the Moon."
		when 3 then
			return_string = "Number 3 is a sociable, friendly, and outgoing vibration. \nKind, positive, and optimistic, Three's enjoy life and have \na good sense of humor. Ruled by Jupiter."
		when 4 then
			return_string = "This is the worker. Practical, with a love of detail, \nFours are trustworthy, hard-working, and helpful. Ruled by Uranus."
		when 5 then
			return_string = "This is the freedom lover. The number five is an intellectual \nvibration. These are 'idea' people with a love of variety \nand the ability to adapt to most situations. \nRuled by Mercury."
		when 6 then
			return_string = "This is the peace lover. The number six is a loving, stable, \nand harmonious vibration. Ruled by Venus."
		when 7 then
			return_string = "This is the deep thinker. The number seven is a spiritual \nvibration. These people are not very attached to material \nthings, are introspective, and generally quiet. Ruled by Neptune."
		when 8 then
			return_string = "This is the manager. Number Eight is a strong, successful, \nand material vibration. Ruled by Saturn."
		when 9 then
			return_string = "This is the teacher. Number Nine is a tolerant, somewhat \nimpractical, and sympathetic vibration. Ruled by Mars."
	end		
end    
            
#------------------------------------------------------------
# Main program - numerology.rb
# Asks the user for his.her birthdate in the format MMDDYYYY
# Uses numerology to convert the birthdate to a birth number
# and returns the birth number and the string associated
# with it
#------------------------------------------------------------
puts 'Please enter your birthdate in the format "MMDDYYYY"'
birthdate = gets
           
birth_number = get_birth_path_number(birthdate)

birth_number_string = get_birth_message(birth_number)
            
puts "Your numerology number is #{birth_number}."
puts birth_number_string

     