class AddStatusToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :status, :integer
    add_column :groups, :status_note, :string
  end
end
