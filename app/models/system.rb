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

	def self.system_atual(system)
   #Rails.logger.debug "DEBUG: params are #{system}"
		if system == 1
			all
		else
			where(:id => system)
		end
    #where(:system_id => system )
  end
end
