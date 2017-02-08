# Eyeson
Internal eyeson api rails sdk for service app implementation

## Usage

### Join a meeting room

Puts a user to a (specific) meeting room.

If no arbitrary ids are given, random ids will be generated.

```ruby
room = Eyeson::Room.new(id:   'ARBITRARY_ID',     # optional, e.g. to join a specific room
                        name: 'ARBITRARY_NAME',   # required!
                        user: {
                        	id:     'ARBITRARY_ID', # optional, e.g. your internal user_id
                        	name:   'DISPLAY_NAME', # required!
                        	avatar: 'IMAGE_URL'     # optional
                        })
```

The meeting room will be available immediately:

```ruby
redirect_to room.url
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'eyeson', git: 'ssh://git@gitlab.infra.dev-visocon.com:2222/eyeson/eyeson-gem.git'
```

And then execute:
```bash
$ bundle
```

## Configuration
```ruby
Eyeson.configure do |config|
  config.api_key  = 'YOUR_API_KEY'
  config.endpoint = 'https://api.eyeson.team'
  config.internal_username = ''
  config.internal_password = ''
end
```

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
