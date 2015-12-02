class Section < ActiveRecord::Base 
  #establishes parent article connection
  belongs_to :article
  #go to join table!
  has_and_belongs_to_many :users
end