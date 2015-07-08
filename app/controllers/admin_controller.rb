class AdminController < ApplicationController
  def home
    #Rails.logger.debug 'DEBUG: Enter in method new of VisitorsController'
    #flash[:notice] = 'Welcome!!'
    render 'admin/home'
  end
end
