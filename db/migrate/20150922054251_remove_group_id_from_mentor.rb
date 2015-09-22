class RemoveGroupIdFromMentor < ActiveRecord::Migration
  def change
    remove_column :mentors, :group_id
  end
end
