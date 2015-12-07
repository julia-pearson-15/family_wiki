require_relative "../config"

class CreateArticles < ActiveRecord::Migration
  def up
    create_table :articles do |t|
      t.string (:name)
      t.date (:date_created)
      t.date (:edit_date)
      t.integer (:user_id) 
    end
  end

  def down
    drop_table :articles
  end
end

CreateArticles.migrate(ARGV[0])