# capybara-siteprism-example-framework

A very very basic example framework in Ruby, using Cucumber, Capybara and Site Prism (for Page Objects),
along with RSpec expectations, cucumber profiles and reporting.

## Assumptions...

 1. You are not 100% new to Ruby or Cucumber or Web Automation Testing.
 2. You have some general idea as to what a web page/website  is.

## What this is / What's included....

 1. A basic framework for testing websites, using Ruby.
 2. A good example to see RSpec expectations in action.
 3. A trivial example of how you can encapsulate your functionality using page objects and code DRYness.
 4. Some basic control regarding choosing a browser at runtime
 5. Simple intro into Rake.

## What this is not...

1. An all-in-one super duper framework.
2. Something that you can 100% copy over for any app (though I suspect you'd be able to use most, as is).

## Known limitations...

 - No multi language

## Want more?

Drop me an email, sherbhachu@googlemail.com for any comments, suggestions, etc.

## Updates coming soon...

 - Unfortunately, no updates, its basic.

## Instructions/Config required prior to use...

Please ensure that you have the latest Chromedriver installed and setup...

https://sites.google.com/a/chromium.org/chromedriver/downloads


I like to use RVM to get my house in order...

1. cd into capybara-siteprism-example-framework/
2. rvm use ruby-2.3.0
3. rvm gemset create capybara-siteprism-example-framework
4. rvm gemset use capybara-siteprism-example-framework
5. gem install nokogiri -v '1.8.2'
6. bundle install

## Example commands to run a specific feature file...

After cd'ing into the 'capybara-siteprism-example-framework' directory...

```
cucumber features/google_search.feature
```

Note that the default profile will choose Chrome as the default browser.


# Instructions

Then to run the tests using the default profile...

```
cucumber features/google_search.feature
```

You can also choose to use Rake (rake is a task runner, check out https://github.com/ruby/rake for useful info)

To list the available tasks...
```
# rake -T
# rake google_search_chrome  # Run Google Search feature with default profile
```

Then, to run the task...
```
rake google_search_chrome
```
