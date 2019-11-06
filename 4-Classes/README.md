# OOP in Ruby
This problem demonstrates the use of classes, instance variables and class variables in Ruby through a Library Management System

## Problem Statement

Write a	fairly large program that implements a simple library system involving three classes defined over three	files, with	a fourth top-level file	that uses them:	

**FILE1 (book.rb):** Should	define a book class, indicating	its	title, author, unique- id and 2-3 other	attributes that	you	think are important. Create	five instances of this class to	use	in testing the program (do this	instance creation in top.rb).

**FILE2 (user.rb):** Should	define a user class (someone who is	borrowing books	from the library), indicating their	name, address, unique-id and any other attributes that you think are important. Create three instances of this class to	use	in testing the program (do this	instance creation in top.rb).

**FILE3 (library.rb):**	Should define a	library	class that has attributes that record the books	in the library,	those books	that have been borrowed, and those books available for borrowing. It is up to you to decide	the	attributes and values for this class. Create one instance of this class	to use in testing the program (do this instance	creation in	top.rb).

**FILE4 (top.rb):**	Should be the top-level file that calls	these other	three files. It	should create the instances	of all the three classes, show the current state of	the	library, have a	method that	carries	out	a borrowing	event (i.e., a user	borrowing a	book) and show again the updated state of the library after	a borrowing	event has occurred,	as well	as the state of	the	user and the book in question. Finally,	create a method	that I have	not	specified that is useful in	this world.	

## Executing the code
Open terminal, type the command:

    ruby top.rb

You will be presented with options for the operations you want to perform.
Enter your choice. Enter the input when prompted.

The code can create a library with a pre-defined list of books and users and can also generate one according to user input.