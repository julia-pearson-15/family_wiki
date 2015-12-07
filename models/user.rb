class User < ActiveRecord::Base
  has_secure_password
  #user writes articles
  has_many :articles
  #user (author) writes comment
  has_many :comments
  #establishes editing connections between authors and sections
  has_and_belongs_to_many :sections
end
