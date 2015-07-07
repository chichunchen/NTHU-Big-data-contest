class CreateGstatuses < ActiveRecord::Migration
  def change
    create_table :gstatuses do |t|
      t.string :name
      t.text :note

      t.timestamps null: false
    end
  end
end
