class Category < ActiveRecord::Base
  #go to join table with articles!
  has_and_belongs_to_many :articles
end