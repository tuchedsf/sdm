class Knowledge < ActiveRecord::Base

  belongs_to :system
  belongs_to :user

  validates_presence_of :titulo, :descricao

  def self.system_atual(system)
  # Rails.logger.debug "DEBUG: params are #{system_adm}"
    if system == System.codSistemaAdministrativo
      all
    else
      where(:system_id => system)
    end
  end

end
