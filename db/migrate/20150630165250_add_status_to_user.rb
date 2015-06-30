class AddStatusToUser < ActiveRecord::Migration
  def change
    add_column :users, :status, :integer
    add_column :users, :status_note, :string
  end
end
