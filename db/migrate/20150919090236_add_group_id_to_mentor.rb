class AddGroupIdToMentor < ActiveRecord::Migration
  def change
    add_reference :mentors, :group, index: true, foreign_key: true
  end
end
