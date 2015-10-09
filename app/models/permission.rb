class Permission < ActiveRecord::Base
  belongs_to :system
  belongs_to :user

  enum role: [:consulta, :relator, :administrador, :adm_sdm]
end