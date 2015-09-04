class Category < ActiveRecord::Base

  belongs_to :system
  has_many :calleds
  validates_presence_of :descricao, :system_id
  #validates :ativo, :inclusion => {:in => [true, false]}

  #  validates :ativo,
   #         :presence => { :if => 'ativo.nil?' }

end
