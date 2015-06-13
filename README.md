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
- Rspec
- Git
- Twilio

How to run it
----
```
git clone git@github.com:GBouffard/takeaway-challenge.git
cd takeaway-challenge
cd lib
touch secrets.rb
subl secrets.rb
```
I used a secrets.rb file that I added to my gitignore. You will need to type these 4 lines with your phone number and your own Twilio credentials in the secrets.rb for the project to work.
```
MY_NUMBER = your_phone_number_as_an_integer_starting_from_the_7_digit
TWILIO_ACCOUNT_SID = 'your_twilio_account_SID_as_a_string'
TWILIO_AUTH_TOKEN = 'your_twilio_auth_token_as_a_string'
TWILIO_NUMBER = your_twilio_phone_number_as_an_integer_without_the_+44
```

now you can play in irb with classes, place an order and have it send an SMS to your phone!

How to run tests
----
```
cd takeaway-challenge
rspec
```
and this is what you should see:
![](tests_screenshot.png)

On top of that, once rspec has finished running and if you filled secrets.rb, you should automatically receive a SMS confirmation. Please don't wait for any burgers and chips to be delivered at your door. Let's be realistic! It's only an exercise. I can make things happen with my programming skills but I'm not that good...yet.