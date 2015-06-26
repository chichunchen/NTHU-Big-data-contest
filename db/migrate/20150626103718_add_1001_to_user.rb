class Add1001ToUser < ActiveRecord::Migration
  def change
    add_column :users, :has_job_bank, :boolean
    add_column :users, :agree_job_bank, :boolean
    add_column :users, :password_job_bank, :string
  end
end
