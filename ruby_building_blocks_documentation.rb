#---------------------
#codecademy ruby track
#---------------------
#The goal here is to use interactive exercises to introduce the core elements of Ruby. 
#I am not quite sure how to document this, but I will do my best to revise my documenting
#and adapt it for this style. 

# 1. Introduction to Ruby

#------------
#1.1 Overview
#------------
#Ruby is 'high level' meaning that it is written close to english (vs something like assembly)
#Ruby is interpreted vs compiled.
	#An interpreted language sends instructions to an interpreter which then interacts with 
	#the hardware.
	#A compiled language speaks directly with hardware.

#Ruby is object oriented meaning that you use 'objects' to maniuplate data structures. 
#Ruby has an ease of use that comes from an intention of 'being able to express' that was
#kept in mind when Ruby was created.

#----------------------------------------------
#1.2 Data Types: Numbers, Booleans, and Strings
#----------------------------------------------
#Ruby has 5 data types: 
		#Symbols
		#Numbers
		#Strings
		#Arrays
		#Hashes 

#Computer programs only exist to manipulate data faster than we can as humans so it makes
#sense that we would need to be familiar with how this language treats different types of 
#data.

	#Example
		my_num = 4
		my_num.is_a?(Integer) # => true

		my_boolean = true
		my_boolean.is_a?(TrueClass) # => true

		my_string = "heyo"
		my_string.is_a?(String) # => true

#---------
#1.3 Variables
#---------
#A variable is a word that points to any single value. That value can be static, dynamic,
#or a result. 

#We use the '=' symbol to assign values to variables.
	#Example
		variable = 100+2
		(variable == 102) # => true
		#In this example variable is pointing to the result of 100 + 2

#--------
#1.4 Math
#--------
#Ruby has the ability to do many mathematical computations, but focused on in this module are:
	#Addition 	    (+)
	#Subtraction 	(-)
	#Multiplication (*)
	#Division		(/)
	#Exponentiation (**)
	#Modulo			(%)

	#Example: Exponentiation
		my_cube = 2**3
		(my_cube == 8) # => true

	#Example: Modulo
		my_remainder = 3 % 2
		(my_remainder == 1)

#Modulo is great for making sure that you dont give or get half of something when something
#exists only as a whole. It can also be used to check for even numbers, and other things
#that my brain has yet to discover.

#----------------------
#1.5 'puts' and 'print'
#----------------------
#'print' or 'p' prints the expression after it to the screen
#'puts' prints the expression, then adds a line break after the expression.
	#Example 
		puts "hello" 
		puts "hi"
		print "hello"
		print "hi"
		puts "no line break"
		# => hello
		# => hi
		# => hellohino line break
		# => nil
		#(the nil is returned at the end of the print and puts statement)

#------------------------
#1.7 The '.length' Method
#------------------------
#We call methods on an object using the '.'. a method can be called on any object, but methods
#are only made to do one thing, so there are different methods for different data types.

#Here we will talk abotu a String Method, :length.
	#Example
		length = "we make a string object by enclosing text in quotes".length # => 51
		length.class # => Fixnum
		#:length will not print any data unless you print it. it will silently
		#return the length as a Fixnum, and if we assign that result to a variable, we can 
		#see that result.

#-------------------------
#1.8 The '.reverse' Method
#-------------------------
# :reverse is called like every other Method, but it returns the string in 
#reversed order (go figure)
	#Example 
		reversed_string = "This string will be wierd".reverse
		reversed_string.class # => String
		reversed_string # => "dreiw eb lliw gnirts sihT"

#The Array method of :reverse I suspect will see the most action, working as a filtering 
#mechanism

#---------------------------
#1.9 '.upcase' & '.downcase'
#---------------------------
#:upcase and :downcase convert a string to all capital letters or lowercase letters respectively.
#These are very useful for formatting user input to be evaluated in conditionals, such as
#logons, survey, interactive forms, etc
	#Example 
		def tell_me
			tell_me_champ = gets.chomp
			if tell_me_champ == 'yes'.downcase
			puts "yeah you are :)"
		elsif tell_me_champ == 'no'.downcase
			puts "YES YOU ARE, CHAMP!"
		else puts "YES OR NO, CHAMP."
			tell_me
		return tell_me_champ
		end
		end
		puts "Are you a winner? yes or no."
		#tell_me # => uncomment to run method

#------------------------
#1.10 Sinle-line Comments
#------------------------
#*Stuff about comments*

=begin
------------------------
1.11 Multi-line Comments
------------------------
So now we know how to do this! =begin on its own line to start, then after the last line, 
=end

=begin
-----------------------
1.12 Naming Conventions
-----------------------
For local variables, names should be lowercase, with words separated by underscored.
There is a naming convention in Ruby that should be used, and for now we will only focus
on the one pertaining to local variables.
=end

=begin
-----------------------------
1.13 Variables and Data Types
-----------------------------

=end	#Example
			a_symbol = :mark
			a_string = 'mark'
			a_number = 5491
			an_array = []
			a_hash = {}

			a_symbol.class # => Symbol
			a_string.class # => String
			a_number.class # => Fixnum
			an_array.class # => Array
			a_hash.class 	 # => Hash
			#We use the :class method to determine which class (native or local) that an 
			#object belongs to.

=begin
----------
1.14 Math
----------
=end 	#Example
			p sum = 13 + 379 
			p product = 923*15 
			p quotient = 13209/17
			#The variables here point to the RESULT of the math, not the equation.

=begin
-------------------------------
1.15 Strings and String Methods
-------------------------------
=end
		#Example
			name = 'mark'.downcase.reverse.upcase
			#Here we use method chaining to call another method with the return of the previous
			#method all on one line.

=begin uncomment to run
#PROJECT 1: PUTTING THE FORM IN FORMATTER

# What will we build: a small program that will read a users input and correct their 
#capitalization. Users can provide an almost infinite range of input so it helps to make the
#input standard before we let the program handle it.


#Step 1 PROMPT THE USER
	print "What's your first name?"

#Step 2 GETTING INPUT
	first_name = gets.chomp
	#gets is a statement that 'gets a string', then we call the chomp method to delete the 
	#return key entry from the input.

#Step 3 REPEAT FOR MORE INPUT
	print "What's your last name?"
	last_name = gets.chomp

	print "What city do you live in?"
	city = gets.chomp

	print "What state do you live in? (ie. CA, NY, etc)" #Be specific with what format youre
	state = gets.chomp									 #requesting when it comes to input.

#Step 4 PRINTING THE OUTPUT
#Here we will use string interpolation to present our variables as readable text.
	print "Hi, #{first_name} #{last_name}! Youre from #{city}, #{state}, right?"


#Step 5 FORMATTING WITH STRING METHODS
# We will use the :capitalize Method to capitalize the first letter of a string, and make 
#the rest of the letters lowercase.
#We will add a ! after capitalize to mutate the object in place (instead of assigning the
#result to a new variable)

	first_name.capitalize!
	last_name.capitalize!
	city.capitalize!
	state.upcase!
=end 

# 2. CONTROL FLOW IN RUBY

=begin
----------------
2.1 How it Works
----------------
 Up until now, there has been no way to expand beyond a static input output scope of programming
but that is where control flow comes into play. Using control flow, we can filter our output
by evaluating input in any ways we like. This allows us to do much more for the user and
really flex ruby's pointing and evaluating abilities.
=end
	#EG. (uncomment to run)

=begin
		print "Integer please: "
		user_num = Integer(gets.chomp)

		if user_num < 0
  			puts "You picked a negative integer!"
		elsif user_num > 0
		    puts "You picked a positive integer!"
		else
		    puts "You picked zero!"
		end
=end
=begin
--------
2.2 If 
--------
 If takes an expression and evaluates whether or not that expression is true. if it is true, 
it executes the block of code that follows, and if it evaluates false, the if statement moves
to either the end, elsif, or else.

 The white space and indentation is not required by ruby, but is a convention followed by 
rubyists.
=end

=begin
------------
2.3 Else
------------
 Else is the catch all for an if statement. It comes as the last condition in the statement, 
and is not defined, but rather executes its code block if none of the other conditions in the
statement are met. 
=end

=begin
------------
2.4 Elsif
------------
 If you want additional conditions in your statement, you would add an elsif statement after
your if statement. These conditions will evaluate to either true or false, executing the
code block if true and skipping the code block if false. 
=end

=begin
-------------
2.5 Unless
-------------
 Unless is a statement used to check if a condition is FALSE. 
=end 	#Example
			belly_full = false
			unless belly_full # is truthy
				puts "Time to rock!"
			else puts "peanut butter jelly time!!"
			end
			# => "Time to rock!"

=begin
-----------------
2.6 Equal or not?
-----------------
