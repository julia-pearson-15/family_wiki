require_relative "../config"

class CreateArticleCategory < ActiveRecord::Migration
  def up
    create_table :articles_categories do |t|
      t.integer (:article_id) 
      t.integer (:category_id)
    end
  end

  def down
    drop_table :articles_categories
  end
end

CreateArticleCategory.migrate(ARGV[0])

require_relative "../config"

class SectionUser < ActiveRecord::Migration
  def up
    create_table :sections_users do |t|
      t.integer (:section_id) 
      t.integer (:user_id)
    end
  end

  def down
    drop_table :sections_users
  end
end

CreateSectionUser.migrate(ARGV[0])