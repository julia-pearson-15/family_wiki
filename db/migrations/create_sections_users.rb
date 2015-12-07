require_relative "../config"

class CreateSectionUser < ActiveRecord::Migration
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