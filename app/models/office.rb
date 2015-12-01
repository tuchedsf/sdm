class Office < ActiveRecord::Base
  belongs_to :system
  has_many :items

  validates_presence_of :system_id, :identificador, :siged, :dataRecebimento, :ocorrencia

  def self.system_atual(system)
  # Rails.logger.debug "DEBUG: params are #{system_adm}"
    if system == System.codSistemaAdministrativo
      all
    else
      where(:system_id => system)
    end
  end

end
