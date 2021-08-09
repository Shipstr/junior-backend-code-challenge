# Koho Junior Backend Code Challenge

We'd like you to finish building the Rails application with a few key components to demonstrate proficiency in many common Ruby and Rails patterns, which you'll find yourself using day-to-day here.

Though each engineer does specialize in either front-end or back-end, we still sometimes have full-stack responsibilities. So we'd also like you to implement some basic functionality in the given Vue app.

*We expect this exercise to take 2-4 hours at the most.* If you ran out of time, please comment on what remains to be done in the README.

Since this is a backend-focused challenge, we are not looking for styling or CSS, but will notice if any improvements are made. For this backend challenge, the default configurations should work as-is. Feel free to update the configurations for your implementation of the challenge, if needed.

# Back-end

Please utilize the Rails app which stores and looks up rates from shipping service providers. The app's data model:

#### Provider
Shipping service provider with the attributes:
  * Name of company
  * A flat shipping rate

#### Requirements
* Create a way to load the attached data into the data store. Via console is fine.
* Make sure all the rates are stored.
* Write any specs you deem necessary.

# Front-end/UI

The repo has Vue already installed with Webpacker.

#### Requirements
* Fetch the data from the Rails app on page load.
* Update the simple index view with a list of each provider's name and flat rate.

To run the app:
```
yarn
bundle
rails db:create
rails db:migrate
rails s
```

# README
* Update README.md with how to run your app and how to load your data.
* Any details or decisions you want us to know about.
* In a short paragraph: if you had more time, how would you improve your implementation and what would you do differently?

We encourage you to demonstrate your workflow via git commits with good messages.

When you are done, please zip up your repo and email it to koho.engineering@expeditors.com. If you need to clarify anything regarding this challenge, feel free to email us as koho.engineering@expeditors.com.
