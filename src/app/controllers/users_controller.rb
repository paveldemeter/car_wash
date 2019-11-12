class UsersController < Devise::RegistrationsController
    before_action :configure_permitted_parameters
    before_action :redirect_from_index, only: [:index]

    def create
      super
      current_user.image.attach(params[:user][:image]) if params[:user][:image]
      current_user.roles << Role.find_by(name: 'washer') if params[:user][:roles] == '1'
      current_user.save
    end

    def index
    end
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up).push(:image)  
    end

    def redirect_from_index
      redirect_to root_path  
    end
  end