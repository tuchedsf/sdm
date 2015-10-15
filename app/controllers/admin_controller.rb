class AdminController < ApplicationController

  before_action :authenticate_user!
  before_action :isPerfilSelecionado
	#before_action :set_selecionar_system, only: [:show]

  respond_to :html

#  def index
    #if   session[:system_id].nil?
  #  @permissions =  current_user.permissions
  #  respond_with(@permissions)
  #else
   #redirect_to authenticated_root_path
  #end
#  end


  # def show
  #   #Rails.logger.debug 'DEBUG: Enter in method new of VisitorsController'
  #   #flash[:notice] = 'Welcome!!'
  #   user_session[:system_id] = @permission.system.id
  #   user_session[:user_id] = @permission.user.id
  #
  #   #user_session[:oficina_nome] = @permission.oficina.nome
  #   session[:permission] = @permission
  #   session[:system_id] = @permission.system.id
  #   session[:system_nome] = @permission.system.nome
  #   session[:role] = @permission.role
  #
  #   #print(@permission.role)
  #
  #   #print(@permission.admin?)
  #
  #   #print("aquiuii")
  #
  #   #print (@permission.role.gestorOficina?)
  #
  #   #print(user_session[:permission].admin?)
  #
  #   #user_session[:role] = @permission.role
  #   #redirect_to "/inicio"
  #   render 'admin/home'
  # end
  #
  # private
  #   def set_selecionar_system
  #     @permission = Permission.find(params[:id])
  #   end
end
