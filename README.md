# IsinCodeGenerator

Simple random ISIN Code generator.

See http://en.wikipedia.org/wiki/International_Securities_Identification_Number.

## Installation

Add this line to your application's Gemfile:

    gem 'isin_code_generator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install isin_code_generator

## Usage

In an irb session:

    require 'isin_code_generator'
    IsinCodeGenerator.make("LU")
    #=> LU7994567430

Or from the console:

    $ isin_gen LU
    LU2870209652

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
