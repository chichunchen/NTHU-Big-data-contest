class AddDetailsToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :software, :string
    add_column :groups, :tryout_ip, :string
    add_column :groups, :tryout_account, :string
    add_column :groups, :tryout_password, :string
    add_column :groups, :preliminary_ip, :string
    add_column :groups, :preliminary_account, :string
    add_column :groups, :preliminary_password, :string
    add_column :groups, :final_ip, :string
    add_column :groups, :final_account, :string
    add_column :groups, :final_password, :string
  end
end
