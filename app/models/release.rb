class Release < ActiveRecord::Base

  belongs_to :system

  validates_presence_of :system_id, :versao, :descricao
end
