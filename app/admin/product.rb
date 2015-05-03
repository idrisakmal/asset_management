ActiveAdmin.register Product do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
	permit_params :specs, :name, :product_categories_attributes => [:name, :code]

	hstore_editor

	form do |f|
		f.semantic_errors # shows errors on :base

		f.inputs do
			f.input :name
			f.input :specs, as: :hstore
			f.has_many :product_categories, heading: 'Product Category', allow_destroy: true, new_record: true do |c|
			    c.input :name
			    c.input :code
		  	end
		end
		f.actions         # adds the 'Submit' and 'Cancel' buttons
	end
end
