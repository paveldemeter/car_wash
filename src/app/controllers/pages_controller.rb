class PagesController < ApplicationController
  before_action :redirect_if_not_logged_in, only: [:pricing]

  def homepage
  end

  def contact
  end

  def pricing
  end

  def destroy
    Contact.destroy(params[:id])
  end

  def index
    @contacts = Contact.all
  end
end
