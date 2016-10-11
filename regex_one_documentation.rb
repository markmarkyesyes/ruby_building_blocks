@test_counter = 0
def matcher(a, b, c=nil, d=nil, e=nil, f=nil, pattern)
	to_match = [a, b, c, d, e, f]
	puts "Lesson #{@test_counter}"
	to_match.each do |string|
		if string =~ (/#{pattern}/)
			puts 'MATCH'
		elsif string == nil 
			puts ""
		else puts 'FAIL'
		end
	end
	puts '/////'*10
	@test_counter += 1
end

=begin
Lesson 0: An Introduction, and the ABCs
Regular expressions are extremely useful in extracting information from text such as code, log files, spreadsheets, or even documents. And while there is a lot of theory behind formal languages, the following lessons and examples will explore the more practical uses of regular expressions so that you can use them as quickly as possible.

The first thing to recognize when using regular expressions is that everything is essentially a character, and we are writing patterns to match a specific sequence of characters (also known as a string). Most patterns use normal ASCII, which includes letters, digits, punctuation and other symbols on your keyboard like %#$@!, but unicode characters can also be used to match any type of international text.

Below are a couple lines of text, notice how the text changes to highlight the matching characters on each line as you type in the input field below. To continue to the next lesson, you will need to use the new syntax and concept introduced in each lesson to write a pattern that matches all the lines provided.

Go ahead and try writing a pattern that matches all three rows, it may be as simple as the common letters on each line.

Exercise 1: Matching Characters
Task	Text	
=end 

a =	'abcdefg'	
b =	'abcde'	
c =	'abc'

matcher(a,b,c,nil,nil,nil,'abc') #Passes

=begin
Lesson 1: The 123s
Characters include normal letters, but digits as well. In fact, numbers 0-9 are also just characters and if you look at an ASCII table, they are listed sequentially.

Over the various lessons, you will be introduced to a number of special metacharacters used in regular expressions that can be used to match a specific type of character. In this case, the character \d can be used in place of any digit from 0 to 9. The preceding slash distinguishes it from the simple d character and indicates that it is a metacharacter.

Below are a few more lines of text containing digits. Try writing a pattern that matches all the digits in the strings below, and notice how your pattern matches anywhere within the string, not just starting at the first character. We will learn how to control this in a later lesson.

Exercise 1½: Matching Digits
Task	Text
=end
a =	'abc123xyz'	
b =	'define "123"'	
c =	'var g = 123;'

matcher(a,b,c,nil,nil,nil,'\d\d\d')

=begin
Lesson 2: The Dot
In some card games, the Joker is a wildcard and can represent any card in the deck. With regular expressions, you are often matching pieces of text that you don't know the exact contents of, other than the fact that they share a common pattern or structure (eg. phone numbers or zip codes).

Similarly, there is the concept of a wildcard, which is represented by the . (dot) metacharacter, and can match any single character (letter, digit, whitespace, everything). You may notice that this actually overrides the matching of the period character, so in order to specifically match a period, you need to escape the dot by using a slash \. accordingly.

Below are a couple strings with varying characters but the same length. Try to write a single pattern that can match the first three strings, but not the last (to be skipped). You may find that you will have to escape the dot metacharacter to match the period in some of the lines.

Exercise 2: Matching With Wildcards
Task	Text	 
=end
a =	'cat.'	
b =	'896.'	
c =	"?=+."	
d =	"abc1" #fail

matcher(a,b,c,d,nil,nil,'...\.')

=begin
Lesson 3: Matching specific characters
The dot metacharacter from the last lesson is pretty powerful, but sometimes too powerful. If we are matching phone numbers for example, we don't want to validate the letters "(abc) def-ghij" as being a valid number!

There is a method for matching specific characters using regular expressions, by defining them inside square brackets. For example, the pattern [abc] will only match a single a, b, or c letter and nothing else.

Below are a couple lines, where we only want to match the first three strings, but not the last three strings. Notice how we can't avoid matching the last three strings if we use the dot, but have to specifically define what letters to match using the notation above.

Exercise 3: Matching Characters
Task	Text
=end	 
a =	'can'	
b =	'man'	
c =	'fan'	
d =	'dan'	 #fail
e =	'ran'	 #fail
f =	'pan'    #fail

matcher(a,b,c,d,e,f,'[cmf]..')

=begin
Lesson 4: Excluding specific characters
In some cases, we might know that there are specific characters that we don't want to match too, for example, we might only want to match phone numbers that are not from the area code 650.

To represent this, we use a similar expression that excludes specific characters using the square brackets and the ^ (hat). For example, the pattern [^abc] will match any single character except for the letters a, b, or c.

With the strings below, try writing a pattern that matches only the live animals (hog, dog, but not bog). Notice how most patterns of this type can also be written using the technique from the last lesson as they are really two sides of the same coin. By having both choices, you can decide which one is easier to write and understand when composing your own patterns.

Exercise 4: Excluding Characters
Task	Text	 
=end
a =	'hog'	
b =	'dog'	
c = 'bog'

matcher(a,b,c,nil,nil,nil,'[^b]og') #or [hd]og

=begin
Lesson 5: Character ranges
We just learned how to create a pattern that matches or excludes specific characters -- but what if we want to match a character that can be in a sequential range of characters? Do we have no choice but to list them all out?

Luckily, when using the square bracket notation, there is a shorthand for matching a character in list of sequential characters by using the dash to indicate a character range. For example, the pattern [0-6] will only match any single digit character from zero to six, and nothing else. And likewise, [^n-p] will only match any single character except for letters n to p.

Multiple character ranges can also be used in the same set of brackets, along with individual characters. An example of this is the alphanumeric \w metacharacter which is equivalent to the character range [A-Za-z0-9_] and often used to match characters in English text.

In the exercise below, notice how all the match and skip lines have a pattern, and use the bracket notation to match or skip each character from each line. Be aware that patterns are case sensitive and a-z differs from A-Z in terms of the characters it matches (lower vs upper case).

Exercise 5: Matching Character Ranges
Task	Text
=end	 
a = 'Ana'
b = 'Bob'
c = 'Cpc'
d = 'aax' #fail	
e = 'bby' #fail
f = 'ccz' #fail

matcher(a,b,c,d,e,f,'[A-C][n-p][a-c]')

=begin
Lesson 6: Catching some zzz's
Note: Some parts of the repetition syntax below isn't supported in all regular expression implementations.

We've so far learned how to specify the range of characters we want to match, but how about the number of repetitions of characters that we want to match? One way that we can do this is to explicitly spell out exactly how many characters we want, eg. \d\d\d which would match exactly three digits.

A more convenient way is to specify how many repetitions of each character we want using the curly braces notation. For example, a{3} will match the a character exactly three times. Certain regular expression engines will even allow you to specify a range for this repetition such that a{1,3} will match the a character no more than 3 times, but no less than once for example.

This quantifier can be used with any character, or special metacharacters, for example w{3} (three w's), [wxy]{5} (five characters, each of which can be a w, x, or y) and .{2,6} (between two and six of any character).

In the lines below, the last string with only one z isn't what we would consider a proper spelling of the slang "wazzup?". Try writing a pattern that matches only the first two spellings by using the curly brace notation above.

Exercise 6: Matching Repeated Characters
Task	Text	 
=end
a = 'wazzzzzup'
b =	'wazzzup'	
c =	'wazup'		#fail

matcher(a,b,c,nil,nil,nil,'waz{2,6}up')

=begin
Lesson 7: Mr. Kleene, Mr. Kleene
A powerful concept in regular expressions is the ability to match an arbitrary number of characters. For example, imagine that you wrote a form that has a donation field that takes a numerical value in dollars. A wealthy user may drop by and want to donate $25,000, while a normal user may want to donate $25.

One way to express such a pattern would be to use what is known as the Kleene Star and the Kleene Plus, which essentially represents either 0 or more or 1 or more of the character that it follows (it always follows a character or group). For example, to match the donations above, we can use the pattern \d* to match any number of digits, but a tighter regular expression would be \d+ which ensures that the input string has at least one digit.

These quantifiers can be used with any character or special metacharacters, for example a+ (one or more a's), [abc]+ (one or more of any a, b, or c character) and .* (zero or more of any character).

Below are a few simple strings that you can match using both the star and plus metacharacters.

Exercise 7: Matching Repeated Characters
Task	Text
=end	 
a = 'aaaabcc'	
b = 'aabbbbc'	
c = 'aacc'	
d =	'a'	#fail

matcher(a,b,c,d,nil,nil,'aa+b*c+')
#a+[abc]+.+ was mhy original answer, but it matches without the .+
# the better answer is aa+ to match 'aa' and other a's, then b* to match zero or more b's. then c+ to match all the c's

=begin
Lesson 8: Characters optional
As you saw in the previous lesson, the Kleene star and plus allow us to match repeated characters in a line

Another quantifier that is really common when matching and extracting text is the ? (question mark) metacharacter which denotes optionality. This metacharacter allows you to match either zero or one of the preceding character or group. For example, the pattern ab?c will match either the strings "abc" or "ac" because the b is considered optional.

Similar to the dot metacharacter, the question mark is a special character and you will have to escape it using a slash \? to match a plain question mark character in a string.

In the strings below, notice how the the plurality of the word "file" depends on the number of files found. Try writing a pattern that uses the optionality metacharacter to match only the lines where one or more files were found.

Exercise 8: Matching Optional Characters
Task	Text
=end	 
a = '1 file found?'	
b =	'2 files found?'
c = '24 files found?'	
d = 'No files found.' #skip

matcher(a,b,c,d,nil,nil,'\d+ files? found\?')

=begin
Lesson 9: All this whitespace
When dealing with real-world input, such as log files and even user input, it's difficult not to encounter whitespace. We use it to format pieces of information to make it easier to read and scan visually, and a single space can put a wrench into the simplest regular expression.

The most common forms of whitespace you will use with regular expressions are the space (␣), the tab (\t), the new line (\n) and the carriage return (\r) (useful in Windows environments), and these special characters match each of their respective whitespaces. In addition, a whitespace special character \s will match any of the specific whitespaces above and is extremely useful when dealing with raw input text.

In the strings below, you'll find that the content of each line is indented by some whitespace from the index of the line (the number is a part of the text to match). Try writing a pattern that can match each line regardless of how much whitespace is between the number and the content. Notice that the whitespace characters are just like any other character and the special metacharacters like the star and the plus can be used as well.

Exercise 9: Matching Whitespaces
Task	Text
=end
a = '   abc'	
b =	'    abc'	
c = '       abc'
d = 'abc'	

matcher(a,b,c,d,nil,nil,'')
