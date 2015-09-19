class AddContestDetailsToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :tryout_path, :string
    add_column :groups, :tryout_search, :boolean
    add_column :groups, :preliminary_path, :string
    add_column :groups, :preliminary_search, :boolean
  end
end
