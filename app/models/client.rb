class Client < ActiveRecord::Base
belongs_to :system
has_many :items

validates_presence_of :nome, :email

validates_uniqueness_of :nome, :scope => :system_id

def self.system_atual(system)
# Rails.logger.debug "DEBUG: params are #{system_adm}"
  if system == System.codSistemaAdministrativo
    all
  else
    where(:system_id => system)
  end
end


end
