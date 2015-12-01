class SelecionarPerfilController < ApplicationController

  before_action :authenticate_user!
	before_action :set_selecionar_system, only: [:show]

  respond_to :html

  def index
    @permissions =  current_user.permissions
    respond_with(@permissions)
  end


  def show
    #Rails.logger.debug 'DEBUG: Enter in method new of VisitorsController'
    session[:permission] = @permission
    session[:system_id] = @permission.system.id
    session[:system_nome] = @permission.system.nome
    session[:role] = @permission.role
    redirect_to authenticated_root_path
  end

  private
    def set_selecionar_system
      @permission = Permission.find(params[:id])
    end
end
