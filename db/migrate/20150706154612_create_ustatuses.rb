class CreateUstatuses < ActiveRecord::Migration
  def change
    create_table :ustatuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
