class System < ActiveRecord::Base

	has_many :permissions
  has_many :users, through: :permissions

  accepts_nested_attributes_for :permissions


  validates_presence_of :nome, :responsavel

  validates_uniqueness_of :nome

  has_many :releases, dependent: :destroy
  has_many :categories, dependent: :destroy
  has_many :clients, dependent: :destroy
  has_many :calleds, dependent: :destroy
  has_many :offices, dependent: :destroy
end
