# encoding: UTF-8
class Called < ActiveRecord::Base

  belongs_to :system
  belongs_to :category
  validates_presence_of :system_id, :tipo, :identificador, :descricao, :data, :category_id

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

def self.system_atual(system)
# Rails.logger.debug "DEBUG: params are #{system_adm}"
  if system == System.codSistemaAdministrativo
    all
  else
    where(:system_id => system)
  end
end

end
