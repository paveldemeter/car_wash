class CarsController < ApplicationController
    before_action :verify_editable, only: [:edit]
    # store information for showing all cars
    def index
        @cars = Car.all
    end

    # store information for car currently being shown
    def show
    end

    # store information for creating new car
    def new
    end

    # store information for current car being edited
    def edit
    end

    # creates a new car based on parameters
    def create
    end

    # updates a car based on parameters
    def update
    end

    # destroys the car based on parameters
    def destroy
    end

    private

    def verify_editable
        return if current_user.owns_car?(Car.find(params[:id]))

        flash[:error] = 'You do not have permissions to edit this car!'
        redirect_to root_path
    end
end
