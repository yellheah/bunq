require "bunq/version"
require 'bunq/configuration'
require 'bunq/client'

module Bunq

  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end

end
