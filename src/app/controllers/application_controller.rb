class ApplicationController < ActionController::Base
    def redirect_if_not_washer
        unless user_signed_in? && current_user.roles.include?(Role.find_by(name: 'washer'))
            flash[:error] = 'You cannot access that page unless you are a washer'
            redirect_to root_path
        end
    end

    def redirect_if_not_logged_in
        unless user_signed_in?
            flash[:error] = 'You must be signed in to access that page'
            redirect_to new_user_session_path
        end
    end
end
