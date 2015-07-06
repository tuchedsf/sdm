class Category < ActiveRecord::Base

  belongs_to :system
  validates_presence_of :descricao, :ativo, :system_id

end
