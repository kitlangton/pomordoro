require 'yaml'
module Pomordoro
  class Config

    CONFIG_FILE = "#{Dir.home}/.pomordoro"

    def self.config
      @@config ||= self.load_config
    end

    def self.add(url: nil, channel: nil)
      config[:channel] = channel if channel
      config[:url] = url if url

      File.open(CONFIG_FILE, 'w+') do |f|
        f.write(YAML.dump(config))
      end
    end

    def self.load_config
      begin
        YAML.load_file(CONFIG_FILE)
      rescue
        {channel: nil, url: nil}
      end
    end

    def self.get(key)
      config[key]
    end

    def self.display
      config.each do |key, value|
        puts "#{key.upcase}: #{value}"
      end
    end
  end
end
