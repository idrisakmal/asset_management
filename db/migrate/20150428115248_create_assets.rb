class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :serial
      t.string :tag
      t.references :staff, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
