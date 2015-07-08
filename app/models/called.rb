# encoding: UTF-8
class Called < ActiveRecord::Base

  belongs_to :system
  validates_presence_of :system_id, :tipo, :identificador, :descricao, :data

def formata_tipo(tipo)
  if !self.tipo.nil?
      print self.tipo
      if self.tipo == "O"
        self.tipo = "Ocorrência"
      else
      if self.tipo == "I"
        self.tipo = "Incidente"
      end
    end
    end
end



end
