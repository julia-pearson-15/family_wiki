require "active_record"

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  # will make a databade with this name!
  # do I need to say db/when we're in db?
  :database =>  'db/database.sqlite3'
)

Dir.glob("models/*.rb").each do |path|
  require_relative "../#{path}"
end 