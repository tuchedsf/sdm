class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger


  #before_action :configure_permitted_parameters, if: :devise_controller?

  #protected

  #def configure_permitted_parameters
  #  devise_parameter_sanitizer.for(:sign_up) << :username
  #end

  private
    def isPerfilSelecionado
      if user_session[:permission].nil?
        redirect_to authenticated_root_path, :alert => "Selecione a permissão antes de continuar"
      end
      #flash[:error] = "You must be logged in to access this section"
      #redirect_url permissions_path, :notice => "YOUR NOTICE" # halts request cycle
    #  Rails.logger.debug "DEBUG: params are #{user_session[:permission]}"
    end

end
