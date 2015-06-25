class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :nation, :string
    add_column :users, :identity, :string
    add_column :users, :birthday, :date
    add_column :users, :gender, :string
    # school, department, grade...
    # add_column :users, :profession, :string 複選
    add_column :users, :experience, :string
    add_column :users, :course, :string
    add_column :users, :phone, :string
    add_column :users, :cell_phone, :string
    add_column :users, :address, :string
    # 1111
  end
end
