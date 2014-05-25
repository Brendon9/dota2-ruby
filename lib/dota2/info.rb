# info.rb
module Dota2
  class Client
    module Info
      def info
        get(Dota2::INFO_PATH)
      end
    end
  end
end
