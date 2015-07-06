class Category < ActiveRecord::Base

  validates_presence_of :descricao, :ativo

end
