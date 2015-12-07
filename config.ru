
require "sinatra"
require "redcarpet"
require "bcrypt"

require_relative "db/config"
require_relative "server"

run App::Server