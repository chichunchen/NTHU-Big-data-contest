class CreateGroupTeacherShips < ActiveRecord::Migration
  def change
    create_table :group_teacher_ships do |t|
      t.references :group, index: true, foreign_key: true
      t.references :teacher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
