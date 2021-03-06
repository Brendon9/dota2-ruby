require 'hashie'
require 'httmultiparty'
require 'uri'

require 'dota2/version'
require 'dota2/client'
require 'dota2/version'

module Dota2
  DEFAULT_LOCAL_TARGET = 'https://api.steampowered.com'
  STEAM_API_VERSION = 'V001'
  MATCH_HISTORY_PATH = 'IDOTA2Match_570/GetMatchHistory/'

  def new(options={})
    Client.new(options)
  end
  module_function :new

  def method_missing(method_name, *args, &block)
    return super unless respond_to_missing?(method_name)
    Client.send(method_name, *args, &block)
  end
  module_function :method_missing

  def respond_to_missing?(method_name, include_private=false)
    Client.respond_to?(method_name, include_private)
  end
  module_function :respond_to_missing?
end
