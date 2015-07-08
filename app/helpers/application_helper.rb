module ApplicationHelper
  def formata_data( data)
    if !data.nil?
    data.strftime("%d/%m/%Y")
    end
  end

end
