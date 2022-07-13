require 'redis'
uri = URI.parse(ENV["REDIS_URL"])

Redis.current = Redis.new(:host => uri.host, :port => uri.port)
