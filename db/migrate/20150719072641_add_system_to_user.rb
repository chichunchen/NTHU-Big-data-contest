class AddSystemToUser < ActiveRecord::Migration
  def change
    add_column :users, :system, :string
  end
end
