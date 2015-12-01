class Permission < ActiveRecord::Base
  belongs_to :system
  belongs_to :user

  enum role: [ :consulta, :relator, :administrador, :admin_sdm, :consulta_sdm ]

  validates :role, uniqueness: {scope: [:system_id, :user_id]}

  def self.system_atual(system)
  # Rails.logger.debug "DEBUG: params are #{system_adm}"
    if system == System.codSistemaAdministrativo
      all
    else
      where(:system_id => system)
    end
  end
end
