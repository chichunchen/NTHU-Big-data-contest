class RemoveStatusFromGroup < ActiveRecord::Migration
  def change
    remove_column :groups, :status
  end
end
