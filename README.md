# [WIP] this is a draft.

# Bunq

A Ruby client for the [bunq API](https://doc.bunq.com).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bunq'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bunq

## Usage

### Configuration

```ruby
Bunq.configure do |config|
  config.api_key = '...'
  config.url = 'https://api.bunq.com'
  # config.url = 'https://sandbox.public.api.bunq.com' # Sandbox
  config.version = 'v1'
end
```

### Installation

To create an installation.

```ruby
# Create keypair
keys = Bunq::KeyPair.generate

client = Bunq::Client.new do |config|
  config.api_key = '...'
  config.private_key = keys.private_key
end

# Create installation
installation = client.installations.create(keys.public_key)

# Configure installation
client.installation_token = installation.token
client.server_public_key = installation.server_public_key
```

### Basic usage

```ruby
client = Bunq::Client.new do |config|
  config.api_key = '...'
  config.private_key = keys.private_key 
  config.installation_token: '...'
  config.server_public_key: '...'
end
```

### Device server

To create a device server.

```ruby
device_server = client.device_servers.create("My server")
device_server.id
```

### Session server

To create a session server.

```ruby
session_server = client.session_servers.create
session_server.token
```

### User

Get a list of all available users.

```ruby
users = client.users.list
```

Get a specific user.

```ruby
user = client.users.get(1)
```

### Monetary account bank

### Payment

Get a list of all payments done from a given monetary account.

```ruby
payments = client.payments.list
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/BeginRescue/bunq. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).