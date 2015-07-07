class AddGstatusToGroup < ActiveRecord::Migration
  def change
    add_reference :groups, :gstatus, index: true, foreign_key: true
  end
end
