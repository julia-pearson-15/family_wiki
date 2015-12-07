require_relative "../config"

class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string (:name)
      t.integer (:age)
      t.text (:email)
      t.string (:img_url)
    end
  end

  def down
    drop_table :users
  end
end

CreateUsers.migrate(ARGV[0])