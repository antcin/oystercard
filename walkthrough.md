**Step 1 - Create Gemfile**
```ruby
touch Gemfile
gem install bundler
bundle init
```





**Step 1 - First user story**

```In order to use public transport
As a customer
I want money on my card
```

- Write domain model:
Objects           | Messages
-------------     |     -------------
customer          |
**card**              | **check_balance**, add_money,
                  |
                  |

- Ran feature test in ```irb``` to create instance of ```Card```. Test fails as we have an uninitialized constant.
- Create ```card_spec.rb``` to write unit tests.
