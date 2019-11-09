class Users::RegistrationsController < Devise::RegistrationsController
    before_action :configure_permitted_parameters

    def create
      super
      current_user.image.attach(params[:user][:image])
      current_user.save
    end
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up).push(:image)  
    end
  end