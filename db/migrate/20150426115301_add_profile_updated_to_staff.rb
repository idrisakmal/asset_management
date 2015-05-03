class AddProfileUpdatedToStaff < ActiveRecord::Migration
  def change
    add_column :staffs, :profile_updated, :boolean
  end
end
