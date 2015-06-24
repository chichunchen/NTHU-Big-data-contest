class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :code
      t.string :title
      t.string :hosts
      t.string :schooltime
      t.integer :total_hour

      t.timestamps null: false
    end
  end
end
