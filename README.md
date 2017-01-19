# Zipload

Zipload is a Ruby gem which downloads given zipped file from extract it for you.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'zipload'
```

And then execute:
```
$ bundle
```

Or install it yourself as:
```
$ gem install zipload
```

## Usage

To download a file just run this command

```
require 'zipload'

fileUrl = 'https://dl.dropboxusercontent.com/u/7340491/zipload.zip'
Zipload.download_file(fileUrl)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/abdullahselek/zipload.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

