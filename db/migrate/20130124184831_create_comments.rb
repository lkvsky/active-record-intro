class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |c|
      c.string :user_id
      c.string :url_id
      c.text :comment

      c.timestamps
    end
  end

  def down
    drop_table :comments
  end
end