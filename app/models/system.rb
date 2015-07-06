class System < ActiveRecord::Base

  validates_presence_of :nome, :responsavel

  validates_uniqueness_of :nome

  has_many :orders, dependent: :destroy
  has_many :categories, dependent: :destroy

end
