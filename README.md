:hamburger: Takeaway Challenge :fries:
==================
This is the week 2 challenge from Makers Academy: Takeaway challenge. The goal was to create a Takeaway program that takes in orders from a menu and sends a SMS confirmation to your phone after successfully ordering. These were the user stories:

```
As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes

As a customer
So that I can verify that my order is correct
I would like to check that the total I have been given matches the sum of the various dishes in my order

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered
```

Objectives of exercise
----
To learn about Object-Oriented-Programming and Test-Driven-Development.

Technologies used
----
- Ruby
- Rspec and Capybara
- Git
- Twilio

How to run it
----
```
git clone git@github.com:GBouffard/takeaway-challenge.git
cd takeaway-challenge
irb
Dir["./lib/*"].each {|file| require file }
```
You can now play with classes, place an order and have it send an SMS to your phone!

How to run tests
----
```
cd takeaway-challenge
rspec
```
