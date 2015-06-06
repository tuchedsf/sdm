class System < ActiveRecord::Base

  validates_presence_of :nome, :responsavel

  validates_uniqueness_of :nome
end
