class ApplicationController < ActionController::Base
    def redirect_if_not_washer
        flash[:error] = 'You cannot access that page unless you are a washer'
        redirect_to root_path unless user_signed_in? && current_user.has_role('washer')
    end
end
