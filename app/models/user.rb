class User < ActiveRecord::Base

  has_many :permissions
  has_many :systems, :through => :permissions
  accepts_nested_attributes_for :permissions

  #attr_accessor :type_of_user

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #after_initialize :set_default_role, :if => :new_record?
  #def type_of_user
  #  @type_of_user
  #end

  # setter
  #def type_of_user=(val)
  #  @type_of_user = val
  #end

  def isAdministrador(sistema,perfil)
    if !sistema.nil? and !perfil.nil?
      if sistema == 'Administração' and perfil == 'administrador'
        return true
      end
    end
    return false
  end

end
