module Bunq
  # Stores the configuration
  class Configuration

  	attr_accessor :url, :version, :api_key, 
  		:private_key, :installation_token, :server_public_key

  	def initialize
  		@url = 'https://api.bunq.com'
  		@version = 'v1'
  	end

	end
end
