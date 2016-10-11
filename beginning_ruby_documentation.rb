=begin

Programming == Joy:
A Whistle Stop Tour of Ruby 
and Object Orientation
-------------------------------

As a language, Rubyis very english-like in its expression which is good for us, but it also means 
we need to learn how to speak it properly. Just like in learning Japanese, you learn how Ruby
thinks, then express yourself in that way.

A note on Integers and Floats:
When doing math with Integers, Ruby will round down a result if it contains a decimal. This
is to prevent you from accidentally ending up with more than you actually have as a result,
as well as to simplify math by leaving out all the computing involved in floating point
arithmetic when all you want to do is simple size/quantity evaluations or random number
operations.
If a Float is involved in an equation, all values in the equation will be evaluated as floats.


How Ruby Understands Concepts with Objects and Classes

The benefit of using an object oriented programming language is that since everything is an
object, it is easy to translate ideas into manipulatable code. We can create objects such as 
"people", "cars", and "accounts" and give them any values or purpouses the language will allow.

This is immensely powerful especially considering that if the objects represent their real world 
equivalents to Ruby, Ruby can imitate interaction with real objects through your code. 

EG: For example, you might want to create an application that can manage the booking
of tickets for sports events. The concepts involved include “events,” “people,” “tickets,”
“venues,” and so forth. Ruby lets you put these concepts directly into your programs,
create object instances of them (instances of an “event” might be the Super Bowl or the
final of the 2010 World Cup), and perform operations upon and define relationships
between them. With all these concepts in your program, you can quickly relate “events”
to “venues” and “tickets” to “people,” meaning that your code presents a logical system
from the outset.
EG

As stated above, we structure these ideas in ruby, then create -object instances- of them 
to use within our programs in an expressive and relatable way.
=end


#EG
	class Person  # => A class is where you define a concept, here the concept of a person.
				  # => a class is the definition of a single type object, and always starts 
				  # => with an uppercase letter.
		attr_accessor :name, :age, :gender
				  # => The preceding line provides attributes for the class, denoted by symbols
				  # => that represent the attribute you wish to qualify regarding the concept
				  # => presented by your class.
	end

	person_instance = Person.new
	# => object id
#This creates a new instance of the class we have created. Remember earlier how we said that
#ruby works by creating concepts, then utilizing instances of them in our software.
	person_instance.name = "Mark"
	person_instance.age = 25
	person_instance.gender ='male'
	

=begin
Once we have an instance of our concept, we can assign attributes to that INSTANCE, just as
you do not ascribe attributes to the entire human race, but rather to the individual. Very cool.
We use instances to create individual identities of concepts.


Variables are a computer term for a placeholder. They hold a pointer that points to values
and data stored in the program. In the above person example, we used person_instance as a 
pointed to our instance of the person class. Think of them as mutable storage areas (even
though they dont really store, they point.) This is important to understand when you consider
storing dynamic data under a variable, and have to know that when the data changes, the variable
will point to this new data. It does not intrinsically store data. A powerful mechanism of 
making everything a referenceable object.
=end

=begin
Instead of defining individual concepts, if there is a conceptual grouping we can ascribe to 
the multiple concepts we want to use, we can create one class to contain all the similarties,
then create the specific classes we want to use, and have them inherit the shared attributes
and create instances with them. 
This is useful because if we want to describe people form different demographics as different
concepts, we would have a person class, then have separate demographic classes that inherit
fundamental human characteristics, and siply add whatever specifics we wanted to ascribe.
This keeps us form writing the same code over and over again, referencing more code as we work
through the program and using more energy and creating more breaking points.
=end

=begin
QUOTE Almost everything in real life exists in a similar structure to your classes. Cats can be
pets, which are, in turn, animals; which are, in turn, living things; which are, in turn,
objects that exist in the universe. A hierarchy of classes exists everywhere, and object-
oriented languages let you define those relationships in code.
=end
	#EG
		class Pet
			attr_accessor :name, :age, :gender, :color
		end

		class Cat < Pet
		end

		class Dog < Pet 
		end

		class Snake < Pet
			attr_accessor :length # => Here we see the specific branching that allows us
								  # => to give all the necessary attributes to whatever class
								  # => we need to. 
		end
=begin
the attributes we list are actually methods that we can call on the class which store the
values for the class under the attribute accessor



We now move on to giving our concepts the ability to take action. This is done through methods.
We can define methods in our classes using def(define) and call them with a .
=end
		class Bird < Pet
			def squawk
				puts "SSQQWEEEAAWKKK"
			end
		end

		a_bird = Bird.new
		a_bird.squawk

#We can check to see what kind of objects each object in ruby is (since everythign is an object)
#by calling the :class method on any object.
		a_bird.class # => Bird
		2.class 	 # => Fixnum

=begin
The Kernel module contains methods like 'puts' and 'for' as well as many other universally
needed methods and when Ruby cannot find a method within an objects given class, it scans
the Kernel module to see if the method is contained there.
You can explicitly call methods with Kernel if you want to avoid using an identical method 
defined elsewhere by calling Kernel.method but this is a technicality really.
=end

=begin 
Using String Methods
"Test" + "Test" 	TestTest
"Test".capitalize	Test
"Test".downcase 	test
"Test".chop 		Tes
"Test".hash 		-98625764
"Test".next 		Tesu
"Test".reverse 		tseT
"Test".sum 			416
"Test".swapcase 	tEST
"Test".upcase 		TEST
"Test".upcase.reverse TSET
"Test".upcase.reverse.next TSEU
=end

=begin
Ruby without Object Orentation.
When we define  method outside of a class, we are creating a function that can be accessed 
at any time outside any class or method. While the method is not tied to a class, it is still
an object. You cannot do anything in Ruby without using an object.
=end

=begin
Summary
Class: A definition of a concept in an OOL. 

Object: A sincle instance of a class(concept). objects are the things that exist, classes
are the concepts that define those existences. (class being classification)

Object Orientation: the approach of using classes and objects to model real world concepts in 
a programming language.

Variable: a pointer and label for any value defined to the variable.

Method: A set of code within a class or object. Can accept arguments and/or parameters.

Arguments/parameters: Data passed to methods in parentheses following the method name.
EG: def method(argument, parameter = [:default_value]). 
Arguments must be passed into the method in the same order they are defined to be associated
correctly. The arguments specfied in the method definition can be used in the method as variables 
pointing to the values passed in.

Kernel: a module in Ruby that contains methods that dont apply to any particular class or
other module. EG puts, gets
Can be called without explcitly calling the Kernel module.

Experimentation: The most rewarding part fo programming is that if you want to do something, 
	you can do it. software is a limitless ability to create solutions to problems you
	or others experience. 


Chapter 3


Numbers and Expressions
------------------------
An expression is definted as a combination of numberd, operators, and variables that, when
interpreted correctly, result in an answer of some form.
EG 
	5
	1+3
	"a"+"rod"
	power_level = 9000 + rand(3000)
	power_level + a

Just as in mathematics, wrapping something in parentheses gives it precedence in the order
of operations, attributing a higher level of precedence for each level of nesting.


Variables
-----------
Variables will point to any objects you have created. 
Variables cannot start with numeric characters, cannot contain symbols, cannot join words
with hyphens.

Variables become useful because they help us work with varying(dynamic) data. We can do this
by using variables in expressions, and even assigning values to other variables using existing
variables.


Comparison Operators and Expressions
---------------------------------------
Giving our programs logic to act on data is the heart of what makes software useful as more
than a calculator. 
#=end
#EG 
	age = 10
	puts "You're too young to use this system" if age < 18

	age = 24
	puts "Youre a teenager" if age > 12 && age < 20

	puts "You're NOT a teenager" unless age > 12 && age < 20
	#(This uses the same condition, but with an unless statement, resulting in the opposite
	  of using the if statement)
#=begin
Looping through numbers with Blocks and Iterators
---------------------------------------------------
Any time you want to do certain operations over and over, you will use a loop so you dont have
to explicitly state what you want the program to do for each iteration.

5.times do puts "Test" end
This calls the times method on the number 5, using the number as a counter for the amount of
iterations over the code block passed to the times method.
5.times {puts "Test"} is an alternate inline block wrapper.

Other iterators are :upto, :downto,  and :step
#=end
	#EG
		1.upto(5) # => {block}
		10.downto(5) # => {block}
		0.step(50, 5) # => {block}
#=begin
If we want to use the iteration number as a parameter in our block, we would pass it into the
block as a parameter between | characters
	5.times {|iteration| puts iteration}


Floating Point Numbers
-----------------------
Ruby consders numbers without decimals to be integers: it will always round down, but if you 
specfy a decimal in one or more numbers in an expression, Ruby will treat the numbers like
floats. the numbers come from the Float class instead of Fixnum integers.

We can convert integers to floats using the :to_f method.

Using :to_i rounds the float down into a Fixnum


Constants
----------
There are some variable values that are built into Ruby, due to the absence of necessity to
mutate. These are called constants, and will not mutate their values without a warning.

Constants are denoted by an Capitalized variable name, meaning that classes are constants as
well, making them act as constants as well.


Text and Strings
-----------------
Strings defined between quotes in code are called String Literals.
implementing string literals can be done in many ways
=end
	x = "Test"
	y = "String"
	puts "Success" if x+y == "TestString" # => Success

	#We can create multiline strings with %q
	x = %q{This
		is
		a
		test.}
	puts x
	#The {} used above can be replaced with any delimiter of your choice when using %q
	
=begin
String Expressions
-------------------

When coparing characters in a string, you are comparing their ascii value. To determine the value,
simply 
EG
	?x # => 120
	?A # => 65
And backwards
EG
	120.chr # => x


Interpolation
--------------
Inside double quoted strings, use #{} to wrap an expression to be viewed as a string.


Regular Expression and String Manipulation
-------------------------------------------
A regular expression is essentially a search query. it is a way of filtering a search for text.
A string that describes a pattern for matching elements in other strings.

	substitutions
		substituting something within a string with something else is done with the :sub 
		method. 
		EG
			puts "foobar".sub('bar', 'foo') # => foofoo
		
		:sub substitutes the first instance of the frst parameter passed to it with the second
		parameter. It only replaces the first match.
		To do multiple substitutions at once, use :gsub
		EG
			puts "this is a test".gsub('i', '') # => ths s a test
=end
		#Example (gsub)
			speech = "Four score and seven years ago, I ate a pizza."
			speech.gsub!('o', 'a') # => 
			p speech

#Where regular expression really benefits is in its pattern matching abilities. 
			class Signup

				@@usernames = ['helloman', 'tanakaisfired', 'laughingman', 'useruser']

				def username_entry
					puts "input a username"
					new_username_input = gets.chomp
					if username_exists?(new_username_input) == false
						@@usernames << new_username_input
						puts "thank you for registering!"
					else username_entry
					end
				end

				def username_exists? (username)
					@@usernames.each do |user|
						if user == username
							puts "a user with that name already exists"
							puts "maybe youd like to try #{username.sub(/..$/, '99')}" #Here we use regex to offer an alternative to the entered username if it matches one already registered.
							puts "maybe #{username.sub(/^/, 'Xx')} would work better?" #We user regex start of line anchor here
							username_entry
						end
					end
					return false
				end

			end

			#new_user = Signup.new 
			#new_user.username_entry

#We can use regex to find numbers as well, any sort of solution where matching a pattern in text/numbers is involved, regex will be there to make our solution closer to the 100% use case than explicitly typed patterns.

#Scan will iterate through a string character by character and take a regex pattern as an argument, applying a block to any pattern match with the argument.

			string = "Bitcoin is different than what you know and use every day. Before you start using Bitcoin, there are a few things that you need to know in order to use it securely and avoid common pitfalls."
			bitcoin_count = 0
			string.downcase.scan(/bitcoin+/) {|word| bitcoin_count += 1}
			p bitcoin_count #keepin it NSA y'all

#Enclosing a set of characters in [] will create a character class and check against all characters in the brackets. this can also be expressed as a range; ie. a-m.

#Matching can be accomplished with either the matching operator (=~) or :match from the String class. 
# using =~ in a conditional will return true or false as a result of comparing a string with a regular expression. 
# using :match will work as a comparator as well, but a. does not require regex syntax as an argument, and b. stores its match data as an array. The 0 index is all matches, then every subsequent index is each individual match left to right.
# The return from match is the MatchData object which is an indexed collection of the pattern matches.


#ARRAYS AND LISTS

# :each allows us to iterate over a collection inspecting each element and applying a block to it.
			books = {'03/11/16'=>2500, '03/12/16'=>-300, '03/13/16'=>-400}
			cooked = {}
			books.each do |date, adjustment|
				adjustment += 500
				cooked[date] = adjustment
			end
			p cooked

# :collect (aka :map) iterates over an array and applies a block to each element 	
			books = [['03/11/16', 2500],['03/12/16', -300],['03/12/16', -400]]
			books.collect! do |date, adjustment|
				[date, adjustment+500]
			end
			p books
			books[0][1]+=200
			p books

#Array subtraction and difference is used to find unique elements between multiple arrays
			visitors_mar = ['sandman99', 'bobtehbilder', 'laughingman', 'nothitler']
			visitors_apr = ['bobtehbilder', 'elmofan87', 'bigdawgxX']
			visitors_apr << 'nothitler' #Note about array subtractioin: when assigned to a variable, the return of the subtraction will not re-evaluate if the arrays involved are changed after the variable is delcared. 
			#Array subtraction can be used more dynamically if it is being returned from a method call, rather than being done top level like this example.

			p new_visitors_apr = visitors_apr - visitors_mar # => ["elmofan87", "bigdawgxX"]
			p recurring_visitors_apr = visitors_apr - new_visitors_apr # => ["bobtehbilder"]
			p '//'*10
			visitors_apr << 'sandman99' #sandman is not evaluated as a recurring user after this.
			p visitors_apr
			p new_visitors_apr
			p recurring_visitors_apr

			class Analytics
				@@visitors_feb = []
				@@visitors_mar = ['sandman99', 'bobtehbilder', 'laughingman', 'nothitler']
				@@visitors_apr = ['bobtehbilder', 'elmofan87', 'bigdawgxX']

				def new_visitor(month, visitor)
					if month.downcase == 'april'
						@@visitors_apr << visitor
					elsif month.downcase == 'march'
						@@visitors_mar << visitor
					end
				end

				def unique_visitors(month)
					if month.downcase == 'april'
						return @@visitors_apr - @@visitors_mar
					elsif month.downcase == 'march'
						return @@visitors_mar - @@visitors_feb
					end
				end

				def recurring_visitors(month)
					if month.downcase == 'april'
						return @@visitors_apr - (unique_visitors('april'))
					elsif month.downcase == 'march'
						return @@visitors_mar - (unique_visitors('march'))
					end
				end
			end

			april_visitors = Analytics.new
			p '/////////////'
			p april_visitors.unique_visitors('april')
			p april_visitors.recurring_visitors('april')
			april_visitors.new_visitor('april', 'sandman99')
			p '/////////////'
			p april_visitors.unique_visitors('april')
			p april_visitors.recurring_visitors('april') #here we see sandman show up as a recurring vsitor because we are doing the array subtraction over again by calling the method, versus calling the result of the original subtraction within a variable.



			









			

