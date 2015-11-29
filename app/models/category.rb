class Category < ActiveRecord::Base

  belongs_to :system
  has_many :calleds
  validates_presence_of :descricao, :system_id
  validates_inclusion_of :ativo, in: [true, false]

  validates_uniqueness_of :descricao, :scope => :system_id

  def self.system_atual(system)
   	where(:system_id => system)
	end
end
