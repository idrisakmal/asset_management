class CreateJoinTableProductProductCategory < ActiveRecord::Migration
  def change
    create_join_table :products, :product_categories do |t|
      # t.index [:product_id, :product_category_id]
      # t.index [:product_category_id, :product_id]
    end
  end
end
