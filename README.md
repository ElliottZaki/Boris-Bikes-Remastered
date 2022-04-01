# Project title: 
Boris bike challenge

# Motivation:
Me and my pair programmer were tasked at attempting to complete the 22 exercises of the challenge by the end of the week. Now that course with Makers Academy has completed I intend to complete all previous challeneges to ensure previous learning has been maintained. 

# Installation instructions:
On CML type: 
brew install ruby
- current Ruby version (ruby-3.0.0)
gem install rspec
rspec --init

# How to run programme:
On CML type: 
cd boris-bikes-remastered
open 

# How to run tests:
On CML type: 
rspec

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

# Domain Model:
Please go to the model_structure folder to access the domain model for this project. 

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


# User Story 2:
As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

nouns: member, bike(s), docking station
verbs: return, hired, dock, decide, see

# Functional diagram - Second User story
____________________________________
member           | return
bike(s)          | dock
docking station  | see
------------------------------------

# User Story 3:
As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

nouns: member, bike(s), docking station
verbs: not_to, release

# Functional diagram - Third User story
____________________________________
member           | not_to
bike(s)          | release
docking station  | 
------------------------------------

# User Story 4:
As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

nouns: maintainer, bike(s), docking station, capacity
verbs: control, not_to, accept

# Functional diagram - Fourth User story
____________________________________
maintainer       | control
bike(s)          | not_to
docking station  | accept
capacity         |
------------------------------------

# User Story 5:
As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

nouns: maintainer, bike(s), docking station, capacity
verbs: plan, distribution

# Functional diagram - Fifth User story
____________________________________
maintainer       | plan
bike(s)          | distribution
docking station  | 
capacity         |
------------------------------------

# User Story 6:
As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

nouns: maintainer, area, capacity
verbs: served, specify

# Functional diagram - Sixth User story
____________________________________
maintainer       | served
area             | specify
capacity         |
------------------------------------

# User Story 7:
As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).

nouns: member, bike(s), report, maintainer, users, dockingstation
verbs: reduce, return, manage, accept

# Functional diagram - Seventh User story
____________________________________
member           | reduce
bike(s)          | return
report           | manage
maintainer       | accept
users            | 
dockingstation   |
------------------------------------
