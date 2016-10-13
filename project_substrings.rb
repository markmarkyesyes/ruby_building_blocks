=begin
Project 3: Substrings

Your Task
Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

=end

def substrings(string, dictionary)
	strings = string.downcase.split(/\W/)
	substring_hash = {}

	dictionary.each do |substring|
		counter = 1

		strings.each do |string|
			if string.include?(substring)
				substring_hash[substring] = counter
				counter+=1
			end
		end

	end

	return substring_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)