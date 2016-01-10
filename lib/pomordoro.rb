require "pomordoro/version"
require "pomordoro/config"
require "pomordoro/cli"
require "pomordoro/slackbot"

module Pomordoro
  def self.channel
    Config.get(:channel)
  end

  def self.url
    Config.get(:url)
  end
end
