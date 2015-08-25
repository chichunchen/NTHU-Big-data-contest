class AddPreliminaryFileToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :preliminary_file, :string
  end
end
