# Openproject::GoogleAnalytics

This gem allow you to add google analytics plugin to OpenProject app
without change it core.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'openproject-google_analytics'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install openproject-google_analytics

## Usage

This gem use environment variable. Google analytics tracker number should be exported
in environment variables like in examples below, run in your console:

    `export OPENPROJECT_MULTITENANCY_GA__CODE=UA-xxxxxx-x`

  replace UA-xxxxxx-x with your track number

## Contributing

1. Fork it ( https://github.com/[my-github-username]/openproject-google_analytics/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
