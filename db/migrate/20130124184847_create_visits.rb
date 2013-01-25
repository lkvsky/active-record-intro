class CreateVisits < ActiveRecord::Migration
  def up
    create_table :visits do |v|
      v.string :user_id
      v.string :url_id

      v.timestamps
    end
  end

  def down
    drop_table :visits
  end
end