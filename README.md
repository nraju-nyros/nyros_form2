# NyrosForm2
Short description and motivation.

## Usage
How to use my plugin.

## Installation
First add the gem to your Gemfile and run the bundle command.

```ruby
gem 'nyros_form2'
```

```Next, mount the engine in your routes.rb under the path you want.

mount NyrosForm2::Engine => "/nyros_form2"
```

```Then copy over the migrations and run them.

rake nyros_form2:install:migrations
rake db:migrate
```
## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
