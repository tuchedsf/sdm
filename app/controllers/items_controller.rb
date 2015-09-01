class ItemsController < ApplicationController

  before_action  :authenticate_user!
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def create
    @office = Office.find(params[:office_id])
    @item = @office.items.create(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Called was successfully created.' }
        format.json { render :show, status: :created, location: @item }
        format.js
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
        format.js
      end
    end

  end

  def update
       @office = Office.find(@item.office_id)
     respond_to do |format|
      if @item.update_attributes(item_params)
        format.html { redirect_to @item, notice: 'Called was successfully created.' }
        format.json { render :show, status: :created, location: @item }
        format.js
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
        format.js
     end
   end

  end

   def destroy
    respond_to do |format|
      if @item.destroy
        format.html { redirect_to @item, notice: 'Called was successfully destroyd.' }
        format.json { render :show, status: :created, location: @item }
        format.js
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
        format.js
     end
   end
  end


   private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
      #Rails.logger.debug "DEBUG: params are #{@item}"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:office_id, :mantis, :client_id, :numProcesso, :nomeServidor, :operacao, :migrado )
      #Rails.logger.debug "DEBUG: params are #{params}"
    end
end
