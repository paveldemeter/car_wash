class Users::RegistrationsController < Devise::RegistrationsController
    before_action :configure_permitted_parameters

    def create
      super
      current_user.photo_pic.attach(params[:user][:photo_pic])
      current_user.save
    end
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up).push(:photo_pic)  
    end
  end