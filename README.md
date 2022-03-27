# Project title: 
Boris bike challenge

# Motivation:
Me and my pair programmer were tasked at attempting to complete the 22 exercises of the challenge by the end of the week. Now that course with Makers Academy has completed I intend to complete all previous challeneges to ensure previous learning has been maintained. 

# Installation instructions:
On CML type: 
brew install ruby
- current Ruby version (ruby-3.0.0)

# How to run programme:
On CML type: 
cd boris-bikes-remastered
open 

# Build status:
Testing

# Task 2 - Create a User Story:
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

nouns: person, bike, docking station
verbs: use, release, see

# Functional diagram - First User story
____________________________________
person           | use
bike             | working
docking station  | release
------------------------------------

Draw a diagram that shows how your Objects will use Messages to communicate with one another
1. (object)bike ---> working? ---> true / false
2. if true, (object)docking station ---> release (object)bike
3. if false, (object)docking station ---> throw error

# Task 3 - Domain models & questions:
1. Define 'Feature Test'
  A Feature test is a test created for a specific function / feature or method. This can apply to both front and backend. Features should be applied with the single responsibility principle in mind. 
2. Define a 'stack trace'.
  A stack trace shows a list of method messages prior to exception or error message being thrown. This traceback can be extremely useful in order to isolate errors and bugs in your programme. 

# Task 4 - Debugging an Error:
To complete this challenge, you will need to:
1. Write down the type of error
  NameError

2. Write down the file path where the error happened
   /Users/username/.rvm/rubies/ruby-2.2.2/bin/irb:11:in '<main>'

3. Write down the line number of the error
   irb: 11
 
4. Use the Ruby Documentation to find out what the error means
   Raised when a given name is invalid or undefined.
 
5. Suggest one way of solving the error.
   Define the object to somthing that exisits.