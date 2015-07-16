class AddEducationDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :school, :string
    add_column :users, :department, :string
    add_column :users, :grade, :integer
    add_column :users, :day, :string
  end
end
