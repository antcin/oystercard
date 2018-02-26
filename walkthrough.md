**Challenge 1 *
```ruby
touch Gemfile
gem install bundler
bundle init
```

**Challenge 2**

Initialized rspec files

**Challenge 3**

- Write down the type of error in the issue comments
  ``` Failure/Error:
  describe Card do
  end

NameError:
  uninitialized constant card
```

 - Write down the file path where the error happened
  /spec/card_spec.rb:1:in <top (required)>'

- Write down the line number of the error: 1

- Use the Ruby Documentation to find out what the error means
  We have not defined a constant called Class.

- Suggest one way of solving the error
  Create ```card.rb``` and define ```Card```.
  Ran RSpec and test was still failing because we had to ```require``` ```card.rb``` in ```card_spec.rb```
