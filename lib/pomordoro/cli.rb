require 'thor'

module Pomordoro
  class CLI < Thor

    desc 'config'
    option :url, :channel
    def config(value)
      if opts[:url]
        puts "URL: #{value}"
      if opts[:channel]
        puts "CHANNEL: #{value}"
      end
    end
  end
end
