class AddEmailToUsers < ActiveRecord::Migration
  def up
    change_table :users do |u|
      u.string :email
    end
  end

  def down
    remove_column :email
  end
end
