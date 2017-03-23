require 'openssl'

module Bunq
	class KeyPair

		attr_accessor :store

		def self.generate(size=2048)
			new(OpenSSL::PKey::RSA.new(size))
		end

		def initialize(store)
			@store = store
		end

		def private_key
			store.to_s
		end

		def public_key
			store.public_key.to_s
		end

	end
end