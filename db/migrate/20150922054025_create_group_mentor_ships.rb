class CreateGroupMentorShips < ActiveRecord::Migration
  def change
    create_table :group_mentor_ships do |t|
      t.references :group, index: true, foreign_key: true
      t.references :mentor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
