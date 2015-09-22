class CreateUtilities < ActiveRecord::Migration
  def change
    create_table :utilities do |t|
      t.boolean :enroll

      t.timestamps null: false
    end
  end
end
