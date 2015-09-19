class AddGroupIdToTeacher < ActiveRecord::Migration
  def change
    add_reference :teachers, :group, index: true, foreign_key: true
  end
end
