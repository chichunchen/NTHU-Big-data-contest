class RemoveGroupIdFromTeacher < ActiveRecord::Migration
  def change
    remove_column :teachers, :group_id
  end
end
