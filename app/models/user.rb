class User < ActiveRecord::Base
 
  has_many :permissions
  has_many :systems, :through => :permissions
  accepts_nested_attributes_for :permissions



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  

  #after_initialize :set_default_role, :if => :new_record?

 
 # def set_default_role
 #     self.role ||= :consulta
 # end

end
