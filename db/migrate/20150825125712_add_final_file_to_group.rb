class AddFinalFileToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :final_file, :string
  end
end
