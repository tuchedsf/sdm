class Client < ActiveRecord::Base
belongs_to :system
has_many :items

validates_presence_of :nome, :email

validates_uniqueness_of :nome, :scope => :system_id


end
