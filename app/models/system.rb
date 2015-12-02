class System < ActiveRecord::Base

	has_many :permissions
  has_many :users, through: :permissions
  has_many :releases, dependent: :destroy
  has_many :categories, dependent: :destroy
  has_many :clients, dependent: :destroy
  has_many :calleds, dependent: :destroy
  has_many :offices, dependent: :destroy
	has_many :Knowledge, dependent: :destroy

	accepts_nested_attributes_for :permissions

  validates_presence_of :nome, :responsavel
  validates_uniqueness_of :nome

	@@system_adm = find_by nome: 'SDM-Admin'

	def initialize
			@@system_adm
	end

	def self.codSistemaAdministrativo
		 @@system_adm.id
	end

	def self.system_atual(system)
   #Rails.logger.debug "DEBUG: params are #{system}"
		if system == self.codSistemaAdministrativo
			all
		else
			where(:id => system)
		end
	end





end
