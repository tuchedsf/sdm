class ItemsController < ApplicationController

  before_action  :authenticate_user!
  before_action :set_item, only: [:show, :edit, :update, :destroy]



  # POST /categories
  # POST /categories.json
  def create
    @office = Office.find(params[:office_id])
    @item = @office.items.create(item_params)

    redirect_to office_path(@office)
  end

  def edit
    @office = Office.find(params[:office_id])
    @item = @office.items.find(@item)
  end

  def update
    if @item.update_attributes(item_params)
      @office = Office.find(@item.office_id)
      redirect_to office_path(@office)
    end
  end

   def destroy
    @office = Office.find(params[:office_id])
    @item = @office.items.find(params[:id])
    @item.destroy
    redirect_to office_path(@office)
  end


   private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:office_id, :mantis, :client_id, :numProcesso, :nomeServidor, :operacao, :migrado )
      #Rails.logger.debug "DEBUG: params are #{params}"
    end
end
