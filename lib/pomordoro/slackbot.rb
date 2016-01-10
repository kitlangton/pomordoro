module Pomordoro
  class Slackbot
    def self.post_message
    end

    def self.post_url
      "#{Pomordoro.url}&=%23#{Pomordoro.channel}"
    end
  end
end
