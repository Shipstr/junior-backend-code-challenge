# Koho Junior Backend Code Challenge

We'd like you to finish building the Rails application with a few key components to demonstrate proficiency in many common Ruby and Rails patterns, which you'll find yourself using day-to-day here.

Though each engineer does specialize in either front-end or back-end, we still sometimes have full-stack responsibilities. So we'd also like you to implement some basic functionality in the given Vue app.

*We expect this exercise to take 2-4 hours at the most.* If you ran out of time, please comment on what remains to be done in the README.

Since this is a backend-focused challenge, we are not looking for styling or CSS, but will notice if any improvements are made. Also, don't concern yourself with configuring everything perfectly. This is just an exercise, so if you don't need to tweak something in order to meet the criteria below, leave it at the defaults.

# Back-end

Please utilize the Rails app which stores and looks up rates from shipping service providers. The app's data model:

#### Provider
Shipping service provider with the attributes:
  * Name of company
  * A flat shipping rate

#### Rates
A model to represent shipping rates that each provider has (different from the provider's flat rate).
  * Rate as monetary value (per kilo)
  * Origin, as two-letter country code
  * Destination, as two-letter country code
  * Relationship to the shipping provider

#### Requirements
* Create a way to load the attached data into the data store. Via console is fine.
* Make sure all the converted monetary USD amounts are stored.
* Write any specs you deem necessary.

# Front-end/UI

The repo has Vue already installed with Webpacker.

#### Requirements
* Fetch the data from the Rails app on page load.
* Update the simple index view with a list of: provider's name, origin, destination, formatted rate as a monetary value, formatted common rate in USD.
* Create a simple bare-bones form that allows editing and updating a rate. Allow changing all attributes except the common USD rate.

To run the app:
```
yarn
bundle
rails db:create
rails s
```

# README
* Update README.md with how to run your app and how to load your data.
* Any details or decisions you want us to know about.
* In a short paragraph: if you had more time, how would you improve your implementation and what would you do differently?

We encourage you to demonstrate your workflow via git commits with good messages.

When you are done, please zip up your repo and email it to koho.engineering@expeditors.com. If you need to clarify anything regarding this challenge, feel free to email us as koho.engineering@expeditors.com.
