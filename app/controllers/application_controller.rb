class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 	# alias_method :current_user, :current_staff
 	
	def permit_hstore_params(key, hstore_params)
	  keys = hstore_params.try(:keys)

	  # Return key if params are empty, 
	  # this allows the hstore key to be removed.
	  return key if keys.blank?

	  # Otherwise, return the keys to be whitelisted
	  { key => keys }
	end
end


