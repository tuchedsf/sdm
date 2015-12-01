class Release < ActiveRecord::Base

  belongs_to :system

  validates_presence_of :system_id, :versao, :descricao

  def self.system_atual(system)
  # Rails.logger.debug "DEBUG: params are #{system_adm}"
    if system == System.codSistemaAdministrativo
      all
    else
      where(:system_id => system)
    end
  end
end
