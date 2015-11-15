# WebinarjamApi
A simple ruby API wrapper for retrieving webinar data from WebinarJam. Currently WebinarJam's API only supports retrieval of webinars, no registrants. However you can add registrants to a webinar.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'webinarjam_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install webinarjam_api

## Usage

### Configuration

#### Create a client object:
```ruby
client = ::WebinarjamApi::Client.new('Your API Key')
```
Note: Pass in the API Key as a string, wrap it in quotes.

#### Retrieve all your webinars:
```ruby
client.get_webinars
```

#### Pass in the 'webinar_id' to retrieve the specific webinar:
```ruby
client.get_webinar(webinar_id)
```

#### Add registrants to the webinar
Create a registrant, required fields are name and email.
```ruby
registrant = {
  'name' => 'Chico Manzana',
  'email' => 'chico@manzana.com'
}
```

Pass in registrant, along with webinar_id and schedule into the register_person method.
```ruby
client.register_person(webinar_id, schedule, registrant)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jzntam/webinarjam_api.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

