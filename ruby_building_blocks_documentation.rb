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
			a_hash.class   # => Hash
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

=begin #uncomment to run

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
 When comparing values for equality or inequality, we use the == and != comparator respectively.
=end 	#Example (==) ((stupid example))
			user_names = ['john', 'cookies23', 'licoricexx']
			user_names.map do |user|
				if user.length == 7
					:golden_ticket
				else user_names.delete(user)
				end
			end

		#Example
			user_names.each do |user|
				if user != 'sugar_rainbows23'
					:members_landing
				else puts 'IVE FOUND YOU SUGAR_RAINBOWS23!'
				end
			end

=begin
--------------------------------
2.7 Less Than or Greater Than
--------------------------------
Continuing on the topic of comparators, we can use the following as well:
=end 	#Example (< less than)
			def register_form
				p "pick a name!"
				user_name = gets.chomp
				p "pick a secret code!"
				password = gets.chomp
				if user_name.length || password.length < 5
					register_form
				else verify_age(user_name, password)
				end
			end

=begin	#(uncomment to run)
		#Example (<= less than or equal to)
		
			user_age = {}
			user_names.each do |user|
				p "please enter your age, #{user}"
				age = gets.chomp
				if age.to_i <= 20
					puts "no dice, bud"
				else user_age[user] = age.to_i
				end
			end

		#Example (> greater than)
			user_age.each do |user, age|
				if age > 90
					puts "#{user}, arent you a bit old for this?"
				end
			end
		
		#Example (>= greater than or equal to)
			if user_names.length >=101
				puts "no more registrations at this time"
			else p "Welcome to CandyLand!"
			end
=end 

=begin 
-------------
2.8 Practice
-------------
-------------
2.9 And
-------------
 Another form of operator you can use is a logical or boolean operator.
 	&& and - Results in true if values on both sides of the operator evaluate true in the 
 			 comparison.		
 	|| or - Results in true if values on either side of the operator evaluate true in the 
 			comparison.
 	! not - Results in true when the value is not equal to the comparison value.
=end 	#Example ( && )
			def different_registration_form
				p "pick a name!"
				user_name = gets.chomp
				p "pick a secret code!"
				password = gets.chomp
				if user_name.length && password.length > 5
					puts "welcome!"
				else different_registration_form
				end
			end

		#Example 2 (&&)
			large_array = []
			(1..100).each do |i|
				if i > 22 && i < 84 
					large_array << "REDACTED"
				else large_array << i
				end
			end
=begin
-----------
2.10 Or
-----------
=end 	
=begin 	#(uncomment to run)
		#Example ( || )
			(1..100).map do |i|
				if i > 22 || i == 2
					i= "#{i} REDACTED"
				end
				p i 
			end

		#Example 2 
			def lottery_checker
				puts "pick your number (1 to 1000)"
				puts "odds are 1 in 500"
				pick = gets.chomp.to_i
				if pick == (rand(1000) || rand(1000))
					p 'winner winner!'
				else p 'nope. what did you expect'
				end
			end
			lottery_checker
=end
=begin
------------
2.11 Not
------------
=end
		
		#Example (!)
			!true == false # => true

=begin  #(uncomment to run)
		#Example 2
			large_array.each do |i|
				if i.class != Fixnum
					p 'not a number'
				elsif i % 2 != 0
					p 'odd'
				else p 'even'
				end
			end
=end
=begin
---------------------------------
2.12 Combining Boolean Operators
---------------------------------
You can combine operators in expressions using parentheses to dictate the order of operations
=end
=begin 	#(uncomment to run)
		#Example
			user_age = [22,55,11,66,33,2,55]
			user_age.each do |age|
				if (age <= 20) || (age > 80)
					puts "Sorry, you do not meet the age requirements"
				else different_registration_form
				end
			end
=end 
		#EG 
			boolean_1 = (3 < 4 || false) && (false || true)# => true

			boolean_2 = !true && (!true || 100 != 5**2)# => false

			boolean_3 = true || !(true || false)# => true

=begin 
---------------------
2.14 If, Else, Elsif
---------------------
=end 
		#Example 
			users = ['john', 'candyman', 'wilbur_22', 'steven', 'kayakbuddy_68', 'kentuckyderbyenthusiast999999']
			users_with_long_names = {}
			users_with_short_names = {}


			users.each do |user|
				if (user.length > 5) && (user.length < 15)
					users_with_long_names[user] = user.length
				elsif user.length < 5
					users_with_short_names[user] = user.length
				else users.delete(user)
				end
			end
=begin
---------------
2.15 Unless
---------------	

		#Example (uncomment to run (does not terminate recursive method call))
			different_registration_form unless (users.length > 6)

=end 
=begin
---------------------
2.16 Dare to compare
---------------------
		#EG
			# test_1 should be false
				test_1 = 5 < 4

			# test_2 = should be false
				test_2 = 10 != 10

			# test_3 = should be true
				test_3 = 3 < (20/5)
=end
=begin 
--------------------------
2.17 Billions of Booleans
--------------------------
The code in the editor indicates what value (true or false) we want each variable to have, 
and your job is to add an expression that evaluates to the correct value using boolean 
operators (&&, ||, or !).
=end
		#EG
			# test_1 should be true
				test_1 = (1..100).to_a.length > (2 || 3)

			# test_2 = should be true
				test_2 = (5 && 6) > 2

			# test_3 = should be false
				test_3 = !6 == 7

=begin #uncomment to run
#PROJECT 2: THITH MEANTH WAR!~

#What You'll Be Building
#Now that we can direct our program using if / else statements, we can produce different 
#results based on different user input.

#In this project, we'll combine control flow with a few new Ruby string methods to Daffy 
#Duckify a user's string, replacing each "s" with "th".

#STEP 1: GETTING USER INPUT
 #First, we should print a statement to prompt the user for input, then set that input to 
 #a variable using gets.chomp.

 #Instructions
 #Use print to ask the user for input.
 #Declare a variable called user_input and set it equal to the user's input using gets.chomp.
		print "please input a string"
		user_input = gets.chomp

#STEP 2: DOWNCASE!
 #We want to make sure we capture both "S" and "s" in the user's input. We could write 
 #separate if / else statements to handle this, but we can also use .downcase! to convert 
 #the user's input to all lower case. That way, we only have to search for "s". 

 #Instructions
 #Call the .downcase! method on user_input. 
 #(Just a reminder that we use the ! to modify elements in place, rather than using method 
 #return)
 #Make sure to include the ! so that the user's string is modified in-place; otherwise, 
 #Ruby will create a copy of user_input and modify that instead.
 		user_input.downcase!

#STEP 3: SETTING UP THE IF BRANCH PT 1
 #We want to check user_input for the substring "s".

 #Write an if statement in the editor. It should check to see if user_input includes "s".
 #For now, print a string of your choice to the console if it finds "s".
 		if user_input.include? "s"
 			user_input.gsub!(/s/, "th")
 		else p 'There are no "s"s in the string'
 		end

#STEP 4: SETTING UP THE IF BRANCH PT 2
 #When we find "s", we want Ruby to replace every instance of "s" it finds with "th". 
 #We can do this with the .gsub! method, which stands for global substitution.
 		#Example
 			users.each do |user|
 				if user.include? "s"
 					user.gsub!(/s/, "th")
 				end
 			end

 #Remove the print statement you added to your if statement and replace it with a 
 #call to .gsub! on user_input. Have it replace /s/ with "th".
 		#Changes made in step 3.

#STEP 5: SETTING UP THE 'ELSE' BRANCH
 #Add an else statement that displays a string to the user to let them know if 
 #there are no "s"s in their string
 		#Changes made in step 3.

#STEP 6: RETURNING THE FINAL STRING
 #Add a puts statement that uses string interpolation to show the user their 
 #transformed string.
 		puts "#{user_input}"
#END PROJECT
=end

# 3. Loops & Iterators

=begin
------------------
3.1 The While Loop
------------------
The while loop executes a block of code over and over again while the conditional remains 
true. This is a useful tool to keep something like a form or input field active while accounting 
for the possibility of user error in input. It could also be used to prompt multiple lines of
input terminating on a fulfilled condition.

You must provide a way for the condition to evaluate false, or else you will be in an infinite
loop.
		#Example
=end
=begin
-----------------------------
3.2 Danger: Infinite Loops!
-----------------------------
When we dont give loops like when and until a way to stop, they will loop forever( or at
least until our computer tells the program to cut it out). 
To pevent this from happening, we will either:
a. use a conditional inside the loop to change the loop condition in a way that the loop terms,
b. use a conditional inside the loop with a break statement to end the loop immediately, or
c. use an 'index variable'; a variable set outside the loop that is incremented each iteration 
	from inside the loop, and when the index variable reaches a certain value, the loop will
	terminate
=end
=begin #(uncomment to run)		
			#Example (conditional break)
				user_input = ""
				while user_input.length < 5
					p 'type some stuff!!'
					prompt = gets.chomp
					user_input += "#{prompt} "  # => affects the variable evaluated in the
				end 							# => loop condition.
				p user_input

			#Example (explicit break)
				water_level = 5
				while water_level > 2
					if water_level == 10
						p "Yo basement flooded"
						break					# => explicit break
					end
					p 'DANGER::WATER RISING::'
					p "WATER LEVEL: #{water_level}"
					chance_of_rain = rand(4)
					if chance_of_rain == 1
						p "The rain stopped!!!"
						p "...OK all safe now"
						break					# => explicit break
					else water_level += 1
					end
				end

			#Example (index variable)
				index_variable = 0
				while index_variable < 10
					puts "#{index_variable}. teeheeheehee"
					index_variable +=1
				end
=end
=begin
---------------------
3.3 The 'Until' Loop
---------------------
The until loop is kin to while, rather than breaking when the condition evaluates false, it
breaks when the condition evaluates true. This can help keep the human expression of your code
much easier to interpret. Readability and conditional evaluation for loop termination are the
ONLY differences between until and while.
=end
=begin
-------------------------------
3.4 More assignment Operators
-------------------------------
The most common assignment operator we have used is '=', used to assign values to variables, 
but there are other assignment operators that perform concatenation, multiplication, and 
string maths while assigning values. 
The other assignment operators mentioned here are +=, -=, *=, but all mathematical operators
can be prepended to the = operator to apply their function in assignment.
		#Examples
			c += a | c = c + a
			c -= a | c = c - a
			c *= a | c = c * a
			c /= a | c = c / a
			c %= a | c = c % a
			c **= a| c = c**a
When looking at the last three, it is clear that these will only apply to integer values, as 
division, modulo, and exponentiation cannot be performed as string math.
=end
=begin
------------------
3.5 The 'For' Loop
------------------
The for loop takes an argument that essentially functions as the enumerator 'each' (in fact
it calls each for its operation). Its main function is to loop through a block of code a 
certain number of times, that amount being passed in as an argument (a range or ordered array)

We see each come through plainly when we pass in an unordered array and see the iteration variable
return the values in the unordered array. 
Returns the original argument at the end as well (I assume as a sde effect of using each)
=end
		#Example (using a range)
			for v in (1..3)
				p v
			end 			# => 1\n2\n3

		#Example (using an ordered array)
			for v in [1,2,3]
				p v
			end 			# => 1\n2\n3

		#Example (unordered array)
			for v in [3,5,1]
				p v
			end 			# => 3\n5\n1

=begin
----------------------------------
3.6 Inclusive and Exclusive Ranges
----------------------------------
When we use ranges we use ... for an exclusive (excluding the last number) and .. for an 
inclusive (including the last number)

-------------------
3.8 The Loop Method
-------------------
 Loop is an iterator that runs a block, and is usually controlled with an index variable.
This is considered an 'External Enumerator' because it uses a value outside the loop to control
iteration.
 We can terminate the loop with a conditional break (usually tied to the index variable, 
though im sure theres more than one way to structure the break conditional).
 Loop without a block returns an enumerator.
=end 		
 		#Example 
 			string = "Lovely weather, eh?"
 			mod_string = []
 			i = 0
 			p string
 			loop do 
 				if i % 2 == 0 || i == 0
 					mod_string << string[i].upcase	
 				elsif i % 2 != 0 || i == 1
 					mod_string << string[i].downcase
 				end
 				i += 1
 				break if i == (string.length - 1)
 			end
 			joined_string = mod_string.join("")
 			p joined_string

=begin
-----------
3.9 Next!
-----------
Next is used to skip iterations when a condition is met.
=end
		#Example (in loop)
			user_names = ['jdogg_83', 'susieque', 'therealelvis', 'bobb', 'razerr1911']
			i = 0
			loop do 
				if (user_names[i].length < 5) # => notice we have to add an incrementer in loop
					i += 1 					  # because it relies on an ind var which would not
					next 					  # be incremented if just next was used.
				end
				puts "Nice name, #{user_names[i]}"
				i += 1
				break if i == (user_names.size)
			end

		#Example (for loop)
			for v in 1..10
				next if v % 2 == 0 			# => next can be used inline with the conditonal
				p v 						# because the loop includes its own loop counter.
			end

=begin
---------------------------
3.10 Saving Multiple Values
---------------------------












