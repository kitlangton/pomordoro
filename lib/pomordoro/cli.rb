require 'thor'

module Pomordoro
  class CLI < Thor

    desc 'config --KEY VALUE', 'configure your Slackbot preferences'
    option :url
    option :channel
    def config

      if options[:url]
        Config.add(url: options[:url])
        puts "URL: #{options[:url]}"
      end

      if options[:channel]
        Config.add(channel: options[:channel])
        puts "CHANNEL: #{options[:channel]}"
      end

      if options.empty?
        Config.display
        puts Slackbot.post_url
      end
    end
  end
end
