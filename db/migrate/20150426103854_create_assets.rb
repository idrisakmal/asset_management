class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :name
      t.string :serial
      t.string :tag
      t.hstore :specs
      t.references :staff, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
