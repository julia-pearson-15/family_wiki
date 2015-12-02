class Article < ActiveRecord::Base
  #can I just do  -  has_many :sections :comments
  has_many :sections
  has_many :comments
  #establishes author connection
  belongs_to :users
  #go to join table!
  has_and_belongs_to_many :cetegories
end