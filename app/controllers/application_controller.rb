class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 	alias_method :current_user, :current_staff 

	def after_sign_in_path_for(staff)
		if current_staff.profile_updated
			show_staff_assets_path(current_staff)
		else
			edit_staff_path(current_staff)
		end
	end


	def permit_hstore_params(key, hstore_params)
	  keys = hstore_params.try(:keys)

	  # Return key if params are empty, 
	  # this allows the hstore key to be removed.
	  return key if keys.blank?

	  # Otherwise, return the keys to be whitelisted
	  { key => keys }
	end
end


