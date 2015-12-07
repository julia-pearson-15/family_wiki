require_relative "../config"

class CreateSections < ActiveRecord::Migration
  def up
    create_table :sections do |t|
      t.string (:name)
      t.text (:body)
      t.date (:edit_date)
      t.integer (:article_id) 
    end
  end

  def down
    drop_table :sections
  end
end

CreateSections.migrate(ARGV[0])