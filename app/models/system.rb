class System < ActiveRecord::Base

  validates_presence_of :nome, :responsavel

  validates_uniqueness_of :nome

  has_many :releases, dependent: :destroy
  has_many :categories, dependent: :destroy
  has_many :clients, dependent: :destroy
  has_many :calleds, dependent: :destroy
  has_many :offices, dependent: :destroy
end
