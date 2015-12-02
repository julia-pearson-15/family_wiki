class Comment < ActiveRecord::Base
  #establishes author connection
  belongs_to :users
  #establishes connection to parent article
  belongs_to :articles
end