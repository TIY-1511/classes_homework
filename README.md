TIY - week 1 - coursework
==============

1. Setup a fork of TIY-Rails-1507/week-01-coursework
--------------

In GitHub you can fork a repo which creates a copy of a repo in another account. For more information 
see https://help.github.com/articles/fork-a-repo/

Assuming you have not already forked this repo, you are currently reading the week-01-coursework repository, which is under the TIY-Rails-1507 organisation.

Next we will fork this repo so that it is under your account.

The fork button is near the top right in GitHub. Click that and follow the instructions to fork it under your account.

Now there should be a copy of the 'week-01-coursework' repo under your account in GitHub. Next you need to clone this repo locally (to your machine) so that you can edit the files.

In GitHub navigate to your copy of the 'week-01-coursework' repo (if you are not there already). Copy the clone url.

Using the terminal\console on your machine, go to your main development directory.

Type:

```git clone <past the clone url>```

Navigate into the local repo

```cd week-01-coursework```

Now you can make changes commit them locally and push them to GitHub

```
# add a file, or edit one
touch new_file.txt
# add it to the staging area
git add -A
# commit it locally 
git commit -m "This is the commit message"
# push changes to GitHub
git push origin master
```
This will push to your copy of the repo on GitHub.

Try to push your changes every 10 minutes or as soon as you achieve a small task
That way you will have a way of getting back to sanity if things go wrong.

In order for me to review the work you have done, go to https://github.com/TIY-Rails-1507/week-01-coursework 
Click on issues and create one with a link to your GitHub repo where I can see the code

You can also look out for other people's repos in the issues.
Their solutions may help you if you get stuck.

If you could not succeed with any ofthis, then please email me...


2. Project Person
--------------
Navigate into the folder called project_person.

Run the tests with: 
```
ruby person_test.rb
```

Fix any failing tests

Hint:
```ruby
num = 100
puts “The number is #{num}”
```

Move the logic that creates the full name into a function.

Place the function above the TestPerson class (above line 3 in person_test.rb). 

The function can be called ‘full_name()’.

```ruby
def full_name(first_name, last_name)
	# the logic to create the full name goes here
end
```

Use the function within the test e.g.
```ruby
full_name = full_name()
```
In the line above, the left side is the variable and he right is the function call

Check that the tests pass

Side note: I tend to use the term ‘function’ and ‘method’ interchangeably - however in Ruby ‘method’ is used more often.

Move the function to a new file called ‘person.rb’

At the top of person_test.rb add: 
```ruby
require_relative ‘person’
```

Check that the tests pass

In the person.rb file create a class, which has the full_name function inside

```ruby
class Person
	# the full_name function\method goes here
end
```


Use this new class in the tests:
```ruby
person = Person.new
full_name = person.full_name(first_name, last_name)
```

Change the design of the person class. Make the person class take the first and last name in its constructor, and store them in instance member variables.

E.g.

```ruby
def initialize(first_name, last_name)
	@first_name = first_name
	@last_name = last_name
end
```

Use the instance member variables in the full_name method

Remove the parameters from the function definition and the function call (within the tests).

Check that the tests still pass

Write a test that assumes you can change the person’s first name
e.g.

```ruby
def test_set_first_name
	person = Person.new('John', 'Snow')
	person.set_first_name('Mark')  
	assert_equal('Mark Snow', person.full_name)    
end
```

Run the test and see it fail

Write the function in the Person class to make the test pass

Make a file called program.rb

Write code in there which uses the Person class and interacts with a user (using gets.chomp())

Hint: Don’t forget to use require_relative here to pull int the person.rb file...
 

3. Project Account
--------------
In this exercise we are going to implement a class that represents a basic bank account 

Change directory into week-01-coursework/project_account/

Notice there are two folders here: tests and lib

The tests folder contains a file called account_tests.rb - which has some test for the account class

The account class is in the lib folder within the account.rb file

To run the tests navigate into the tests folder and type:
ruby account_tests.rb

The output should be:

```
3 runs, 2 assertions, 1 failures, 0 errors, 1 skips
```

Implement the missing functionality in the account class, and test class, so that all the tests are valid and they all pass.


Create a main.rb and play around with instances of Account. E.g. Interact with a user (using gets.chomp.to_i) to get values and then use an instance to of Account to show the current balance


4. Project Bank
--------------
In this exercise we are going to implement a class that represents a bank. The bank class will use instances of an account class.

Change directory into week-01-coursework/project_bank

Have a look around and familiarise yourself with the structure

Take special notice of the contents of test_helper.rb and project_bank.rb


To run one test class, navigate into the tests folder and type:
```
ruby account_test.rb # or which ever file you would like to run
```

To run all the tests navigate into the tests folder and type:
```
ruby test_helper.rb
```

The output should be:

```
4 runs, 5 assertions, 0 failures, 0 errors, 0 skips
```

In bank_test.rb, move the logic that does a transfer into a method\function above the test class

It should look something like this: 
```ruby
def transfer(from_account, to_account)
 # logic
end
```

Use this method within the test and make sure it still passes

Move the transfer method into a new file called bank.rb

bank.rb should be located next to account.rb at project_bank/lib/


Go into project_bank.rb, and require the new file e.g.
```ruby
require_relative ‘bank’
```

Make sure the tests pass

Within bank.rb, create a class called Bank, and move the transfer method into that.
Update the tests so that they use instances of this new class.

Make sure the tests pass

Create a main.rb and play around with instances of Account and Bank.

5. Take a break! 
--------------
.. take another one


6 Prepare for the next class
--------------

In the next class we will be moving onto lists (arrays) and hashes

Do your best to complete the following online Ruby tutorial
http://tryruby.org/
