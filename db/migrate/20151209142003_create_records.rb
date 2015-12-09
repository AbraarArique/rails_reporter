class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :reporter, null: false
      t.string :email, null: false
      t.text :description, null: false

      t.timestamps null: false
    end
  end
end
