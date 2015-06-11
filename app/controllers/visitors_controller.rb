class VisitorsController < ApplicationController
  def new
    #Rails.logger.debug 'DEBUG: Enter in method new of VisitorsController'
    #flash[:notice] = 'Welcome!!'
    render 'visitors/new'
  end
end
