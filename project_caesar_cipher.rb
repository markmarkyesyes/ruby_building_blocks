=begin

Your Task
Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
You will need to remember how to convert a string into a number. 120.chr 'x'.ord
Don't forget to wrap from z to a. A = 65 Z = 90 a = 97 z = 122
Don't forget to keep the same case.

Increments every letter by a value

=end
def caesar_cipher(string, shift_factor)
	modified_string = []

	string.split("").each do |chr|
		letter = chr.ord

		if (65..90) === (letter) #Uppercase
			
			#conditional to wrap z to a, else normal shifting.
			if letter+shift_factor > 90
				wrap_upper = (((letter+shift_factor)-90)+65).chr
				modified_string.push(wrap_upper)

			else modified_string.push((letter+shift_factor).chr)
			end

		elsif (97..122) === (letter) #Lowercase

			if letter+shift_factor > 122
				wrap_lower = (((letter+shift_factor)-122)+97).chr
				modified_string.push(wrap_lower)

			else modified_string.push((letter+shift_factor).chr)
			end

		else modified_string.push(chr)
		end	

	end
	
	return modified_string.join("")

end

puts caesar_cipher("SANDKEY  targets those communications  of and between  maritime vessels operating  in the  Caribbean  and southwest waters.   It may  intercept  communications  between the  mother  ship and go-fast  boats or between the mother ship and shore.  Primarily  it extracts  intelligence  based  on  voice communications  and through  Radio  Direction  Finding, vectors  law enforcement  asserts to the  mother ship.  For example,  a  Panama  Express-South  (PANEX-S)  team will, through an informant,  know a certain boat's departure,  SANDKEY will  be tipped-off to  monitor the traffic and a  US Coast Guard  Law  Enforcement  Detachment  (LEDET) will conduct the interdiction.  SANDKEY,  over it's long-life,  has detected  and  identified the  major drug trafficking corridors  in the southwest and Caribbean through  direction finding and  analysis", 5)
#the first article that comes up when searching snowdens leaked documents for 'ham' (im hungry)