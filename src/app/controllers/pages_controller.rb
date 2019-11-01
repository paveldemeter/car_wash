class PagesController < ApplicationController
  def homepage
  end

  def contact
  end

  def destroy
    Contact.destroy(params[:id])
  end

  def index
    @contacts = Contact.all
  end
end
