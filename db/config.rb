require "active_record"

if ENV['RACK_ENV'] == "production"
  require 'uri'
  db = URI.parse(ENV['DATABASE_URL'])
  ActiveRecord::Base.establish_connection({
    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  })
else
  
ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => 'db/database.sqlite3'
)
end



ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  # will make a databade with this name!
  # do I need to say db/when we're in db?
  :database =>  'db/database.sqlite3'
)

Dir.glob("models/*.rb").each do |path|
  require_relative "../#{path}"
end 