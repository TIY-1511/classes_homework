# Classes

## Setup a fork of this repo

In GitHub you can fork a repo which creates a copy of a repo in another account. For more information 
see https://help.github.com/articles/fork-a-repo/

The fork button is near the top right in GitHub. Click that and follow the instructions to fork it under your account.

Now there should be a copy of the repo under your name in GitHub. Next you need to clone this repo locally (to your machine) so that you can edit the files.

In GitHub navigate to your copy of the repo (if you are not there already). Copy the clone url.

Using the terminal\console on your machine, go to your main development directory. Clone the repo and change directory into it.


Try to push your changes every 10 minutes or as soon as you achieve a small task
That way you will have a way of getting back to sanity if things go wrong.

Please send me links to your code in GitHub if you would like me to review the code. 

If you could not succeed with any of this, then please shout on Slack...


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

The function can be called `full_name()`.

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


5 Project Invoice
--------------
Make a class called `Item` which has a `name`, `price`, and unique `code`.

These fields should be set in the constructor. Allow the name and price to be read and written too. The code should only be read, but not changed.

Create a file called `main.rb` and make sure `Item` is working as expected.

Create a class called `Invoice`. This class should have a method on it called `add` which accepts an `item`. The invoice class should maintain a colleciton of `items` that have been added to it.

The `Invoice` class should have a method called `sub_total` which returns the total cost of all the items, without any tax being applied.

The `Invoice` class should have a method called `total` which returns the total cost of all the items, with a 10% tax being applied.

The `Invoice` class should have a method called `print` which does not return anything, but displays the key information on the screen e.g. items, prices, sub total, total. Spacing is not as important as the actual values.

Test that this class works correctly in `main.rb`.

Note (the catch): you can add the same item more than once e.g.

```ruby
invoice = Invoice.new()
drink = Item.new('drink', 1.99, '1011-DRIN')
sweet = Item.new('chocolate', 2.99, '1010-CHOC')

invoice.add(drink)
invoice.add(sweet)
invoice.add(sweet)

invoice.print()

```
Sample output:

```
Invoice

drink @ 1.99 x 1 - 1.99
chocolate @ 2.99 x 2 - 5.98

Sub Total: 7.97
Tax: 10%
Total: 8.77
```



6 Take a break! 
--------------
.. take another one


7 Prepare for the next class
--------------

In the next class we will be moving onto lists (arrays) and hashes

Do your best to complete the following online Ruby tutorial
http://tryruby.org/
