class CreateURLs < ActiveRecord::Migration
  def up
    create_table :urls do |u|
      u.string :long
      u.string :short
      u.string :user_id
      u.string :tag

      u.timestamps
  end

  def down
    drop_table :urls
  end
end