class Comment < ActiveRecord::Base
  #establishes author connection
  belongs_to :user
  #establishes connection to parent article
  belongs_to :article
end