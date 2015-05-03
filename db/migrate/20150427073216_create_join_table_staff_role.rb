class CreateJoinTableStaffRole < ActiveRecord::Migration
  def change
    create_join_table :staffs, :roles do |t|
      t.index [:staff_id, :role_id]
      t.index [:role_id, :staff_id]
    end
  end
end
