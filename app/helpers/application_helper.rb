module ApplicationHelper
  def formata_data( data)
    if !data.nil?
    data.strftime("%d/%m/%Y")
    end
  end


   def formata_SimNao(var)
    Rails.logger.debug "DEBUG: params are #{var}"

    if !var.nil?
      if var == true
        var = "Sim"
      else
        var = "Não"
      end
    else
      var = "--"
    end
  end

end
