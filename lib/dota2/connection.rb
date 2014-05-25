# connection.rb
require 'faraday_middleware'

module Dota2
  class Client
    module Connection
      private

      def connection
        connection = Faraday.new(:url => target_url) do |builder|
          builder.use Faraday::Request::JSON
          builder.use Faraday::Response::Rashify
          builder.use Faraday::Response::ParseJson

          builder.adapter http_adapter
        end
      end
    end
  end
end
