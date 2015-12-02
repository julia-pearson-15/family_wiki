class Section < ActiveRecord::Base 
  #establishes parent article connection
  belongs_to :articles
  #go to join table!
  has_and_belongs_to_many :users
end