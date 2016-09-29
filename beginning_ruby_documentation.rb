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
equivalents to Ruby, Ruby can vicariously interact with real objects inside your code. 

EG: For example, you might want to create an application that can manage the booking
of tickets for sports events. The concepts involved include “events,” “people,” “tickets,”
“venues,” and so forth. Ruby lets you put these concepts directly into your programs,
create object instances of them (instances of an “event” might be the Super Bowl or the
final of the 2010 World Cup), and perform operations upon and define relationships
between them. With all these concepts in your program, you can quickly relate “events”
to “venues” and “tickets” to “people,” meaning that your code presents a logical system
from the outset.
end EG

As stated above, we structure these ideas in ruby, then create -object instances- of them 
to use within our programs in an expressive and relatable way.
=end

#The Making of a manage
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
??????????????????????????????????????????????????/


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

=begin`
The Kernel module contains methods like 'puts' and 'for' as well as many other universally
needed methods and when Ruby cannot find a method within an objects given class, it scans
the Kernel module to see if the method is contained there.
You can explicitly call methods with Kernel if you want to avoid using an identical method 
defined elsewhere by calling Kernel.method but this is a technicality really.
=end

END PDF PAGE 61



