class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |u|
      u.string :name

      u.timestamps
    end
  end

  def down
    drop_table :urls
  end
end