# client.rb
require 'dota2/client/authentication'
require 'dota2/client/connection'
require 'dota2/client/errors'
require 'dota2/client/request'

module Dota2
  class Client
    attr_accessor :http_adapter, :target_url

    def initialize
      @target_url = Dota2::DEFAULT_LOCAL_TARGET
      @http_adapter = :net_http
    end

    include Authentication
    include Connection
    include Request
  end
end
