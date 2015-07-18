class RemoveDayFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :day
  end
end
