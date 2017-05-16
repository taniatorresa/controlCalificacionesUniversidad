class User < ApplicationRecord
  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
  	       :recoverable, :rememberable, :trackable, :validatable
           
  	validates :nombre, presence: true
  	validates :apellido_paterno, presence: true
  	validates :apellido_materno, presence: true
	
  	def nombre_usuario
  	  "#{nombre} #{apellido_paterno} #{apellido_materno}"
  	end
end
