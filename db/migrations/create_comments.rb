require_relative "../config"

class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.string (:name)
      t.text (:body)
      t.date (:date_created)
      t.integer (:user_id) 
      t.integer (:article_id) 
    end
  end

  def down
    drop_table :comments
  end
end

CreateComments.migrate(ARGV[0])