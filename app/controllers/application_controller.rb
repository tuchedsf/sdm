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
  #    Rails.logger.debug "DEBUG: params session are #{session[:permission]}"
      if   session[:permission].nil?
        redirect_to selecionar_perfil_index_path, :alert => "Selecione a permissão antes de continuar"
      end
    end

end
