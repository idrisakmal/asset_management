class Product < ActiveRecord::Base
  has_many :asset
  has_and_belongs_to_many :product_categories

  accepts_nested_attributes_for :product_categories, allow_destroy: true
end
