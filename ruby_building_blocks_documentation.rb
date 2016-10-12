#Numbers, Operators and Expressions:
=begin
What's the difference between an Integer and a Float?
	An integer is a whole number and a Float is rubys way of representing and calculating decimals.

Why should you be careful when converting back and forth between integers and floats?
	floats round down when converting to integers so your maths will get very incorrect very quickly.

What's the difference between =, ==, and ===?
	= is an assignment operator, == is an equality comparison operator, === is an operator for checking whether something is a part of another thing.

How do you do exponents in Ruby?
	**

What is a range?
	A range is a shorthand way for generating a list of sequential integers, what can start and end anywere, that can be iterated over.

How do you create a range?
	(1..3) or (1...3)

What's the difference between (1..3) and (1...3)?
	(1...3) is 1 up to and not including 3
	(1..3) is 1 up to and including 3

What are three ways to create a range?
	(1..3)
	var = (1..3)
	var1 = Range.new(1,3,exclude_end=false)


Strings:

What's the difference between single and double quotes?
	double quoted strings allow for escape characters and interpolation.
	single quoted strings disable all escape/meta characters.

What is string interpolation?
	Using the special characters #{} in double quoted strings, you can pass in lambdas, variables, string and integer maths, Math, etc and have the result appear in your string text.

What are escape characters?
	escape characters are forward slashes used to convert metacharacters to plain text in double quoted strings

What are line breaks?
	line breaks are used to denote a new line in a single string, denoted by the metacharacter \n

How do you make other things into strings?
	methods .to_s or .gets

How do you concatenate strings?
	with +

How do you access a specific character or substring?
	by using an index to access the string ie string[0..5]

How do you split up strings into arrays?
	using the .split method (which takes an argument that allows a string to be concatenated in between every array element)

How are strings and arrays similar?
	They are both ordered collections of elements

How do you get and clean up user input on the command line?
	gets to 'get string' chained with .chomp to erase the newline metacharacter created by pressing the enter button.

What does it mean that strings are "mutable" and why care?
	This means that strings can be changed, searched, modified, and if that wasnt the case, we would have to type everything every time we wanted to use it.

What is a symbol?
	A symbol is a constant, denoted by a colon before the name, and functions as a name. It does not associate with other objects itself, and is immutable, therefore it takes up much less memory than processing everything as a variable. 

How is a symbol different from a string?
	A symbol is a difference class of object than a string. 

What is a Regular Expression (RegEx)?
	Regular expression is a pattern matchign engine for data and strings to match and manipulate specified text and text structures.

How can you center or right-justify a string?
Arrays:

What are three ways to create an array?
1	arr = Array.new(3) #[nil,nil,nil]
2	var = []			#[]
2	var << 3			#[3]
3	var = [3]			#[3]

How do you prepopulate the array with default data?
	by explicitly including it between brackets, or by using parameters with the new method.
	arry = Array.new(3, 'teehee')  #[teehee,teehee,teehee]

How do you access items in an array?
	by using their zero based index ie arry[0]

How can you access a specific group of items in an array?
	by using a range in the index selector ie array [0..1]

How do you modify the items in an array?
	Either with array methods such as .delete, .delete_at(), .pop, and .push, 
	or by explicitly specifying the element at a certain index (or new index, in which case all unassigned indexes will be filled with nil objects), and assigning a value to that index.
		arr = [3,4]
		arr[6] = 99 #[3,4,nil,nil,nil,nil,99]

How do you combine arrays?
		by using the += operator or iterating over an array and pushing it to another array.

How do you find the values in one array that aren't in another?
	by using - to intersect the arrays


What is the difference between push/pop and shift/unshift?
	push/pop deals with the end of the array, shift/unshift deals with te front. This creates functionality for queue and stack creation

What is the shovel operator?
	It is an alias for push (<<)

How is > arr.pop different from > arr[-1]?
	arr.pop removes the last element from the collection, where as array[-1] points to the last element.

How is pushing or <<ing another array into your array different from just adding them together?
	when you push, you are modifying the original collection. adding arrays is doing behind the scenes work to evaluate both arrays and create a new one. This can lead to truthiness errors and is more laborious on the computational side.

How do you delete items in an array?
	.delete_at(indec) and .delete(element)

Why should you be careful deleting items in an array?
	Because when you delete an element, the values will be at new indexes

How can you convert arrays to strings?
	using the join method and passing it a string to concatenate each element together with.

How can you convert from other data types to arrays?
	using .to_a, map

How can you figure out if an array contains a particular value?
	by using .include?, any?, and an enumerator like each in combination with regexp

How do you find the biggest item in an array?
	.max
How do you find the smallest item in an array?
	.min
How do you remove any duplicates from your array?
	convert it to a set.
How do you find out how big an array is?
	.size
How do you put an array in order?
	.sort
What are the naming conventions for arrays?
	underscores
What should you store in arrays?
	collections of data that need to be ordered, mutable, enumerable, or identical.

Hashes:

What is a hash?
	A hash is collection of key value pairs

What are keys and values?
	Keys are objects that point towards assigned values in the collection.

How is a hash similar to an Array?
	It is a collection that can be enumerated over and searched/accessed

How is a hash different from an Array?
	A hash replaces ordered indexes with unordered keys

What are 3 ways to create a hash?
	hsh = Hash.new
	hash = {}
	hash['yo'] = 'wassup'
	nash = {'yooo' => 'wassuuup'}

What is the hash rocket?
	The assignment operator for keys and values in hashes

How do you access data in a hash?
	hash['yo'], or with enumerable methods

How do you change data in a hash?
	hash['yo'] = 'new data' 

What types of data are good to store in a hash?
	collections of data that have many contributions to one factor, collections of data that do not need to be ordered, or collections that would benefit from a naming convention vs an index convention.

What are options hashes?
	Options hashes are empty hashes at the end of method parameters that take a variable amount of arguments into a hash to be used in the method call.

How do you delete data from a hash?
	.delete

How do you add hashes together?
	.merge method

How do you list out all the keys or values?
	.keys and .values (outputs to array)

How do you see if the hash contains a key or value?
	.has_key? .has_value?

What is a set?
	A set is a group of objects that are all completely unique

Dates and Times:

How do you get the current date and time?
	var = Time.new
How do you find just the Year? Month? Hour? Second? Weekday?
How do you create a Time specifically for 12/25/2013?
How do you find how many days have passed between two Time's?
What's the difference between UTC and GMT and Local times?
How would you find out the time that was 100 seconds ago? 10 days ago?
Other Random Stuff:

What is nil?
How do you check if something is nil?
	using a conditional or is_a?(Nil)
What's the difference between nil and blank and empty?
	Nil is its own class of object, where as a blank or empty object is still whatever class it is a blank instance of.

Are the following nil or empty?
" ", "", [], [""], {}
none are nil, 1,2, and 4 are empty, 0 and 3 contain strings

What's the difference between puts and p and print?
	think double quote and single quote.

What does inspect do?

What do +=, -=, *= and /= do?
	they assign a variable to the result of itself compared with another, with the comparison dictated by the special character preceding the assignment operator

What is parallel assignment?
a, b, c = 1, 2, 3

What's the easiest way to swap two variables?
a, b = b, a

=end