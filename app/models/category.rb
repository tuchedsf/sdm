class Category < ActiveRecord::Base

  belongs_to :system
  has_many :calleds
  validates_presence_of :descricao, :ativo, :system_id

end
