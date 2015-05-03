class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :title
      t.text :message
      t.string :status

      t.timestamps null: false
    end
  end
end
