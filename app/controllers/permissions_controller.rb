class PermissionsController < ApplicationController

    before_action :authenticate_user!
    before_action :isPerfilSelecionado
    before_action :set_permission, only: [:show, :edit, :update, :destroy]

    # GET /permissions
    # GET /permissions.json
    def index
      respond_to do |format|
        format.html
        format.json { render json: PermissionDatatable.new(view_context,:isAdministrador => current_user.isAdministrador(session[:system_nome],session[:role]), :systemSelected => session[:system_id])}
      end
    end

    # GET /permissions/1
    # GET /permissions/1.json
    def show
    end

    # GET /permissions/new
    def new
      @permission = Permission.new
    end

    # GET /permissions/1/edit
    def edit
    end

    # POST /permissions
    # POST /permissions.json
    def create
      @permission = Permission.new(permission_params)
      #Rails.logger.debug "DEBUG: params are #{@permission.role}"
      respond_to do |format|
        if @permission.save
          format.html { redirect_to @permission, success: 'Permission was successfully created.' }
          format.json { render :show, status: :created, location: @permission }
        else
          format.html { render :new }
          format.json { render json: @permission.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /permissions/1
    # PATCH/PUT /permissions/1.json
    def update
      respond_to do |format|
        if @permission.update(permission_params)
          format.html { redirect_to @permissiom, notice: 'permission was successfully updated.' }
          format.json { render :show, status: :ok, location: @permission }
        else
          format.html { render :edit }
          format.json { render json: @permission.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /permissions/1
    # DELETE /permissions/1.json
    def destroy
      respond_to do |format|
        format.html { redirect_to permissions_url, success: 'permission was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_permission
        @permission = Permission.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def permission_params
        params.require(:permission).permit(:system_id, :user_id, :role)
      end

end
