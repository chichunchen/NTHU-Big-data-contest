class AddUstatusToUser < ActiveRecord::Migration
  def change
    add_reference :users, :ustatus, index: true, foreign_key: true
  end
end
