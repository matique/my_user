[![Gem Version](https://badge.fury.io/rb/my_user.png)](http://badge.fury.io/rb/my_user)
[![GEM Downloads](https://img.shields.io/gem/dt/my_user?color=168AFE&logo=ruby&logoColor=FE1616)](https://rubygems.org/gems/my_user)

# MyUser
If something can be DRYed then DRY it.
Several of my applications has a common piece of code
for the model User,
i.e. an ocasion for DRYing.

So, this gem is intended for my personal usage,
but you may take advantage for it as well.

## Usage
```ruby
class User < ApplicationRecord
  include MyUser
end
```

## Installation
As usual:
```ruby
# Gemfile
gem "my_user"
```
and run "bundle install".

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Miscellaneous
Copyright (c) 2024 Dittmar Krall (www.matiq.com),
released under the [MIT license](https://opensource.org/licenses/MIT).
