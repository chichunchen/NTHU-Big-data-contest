class AddTryoutFileToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :tryout_file, :string
  end
end
