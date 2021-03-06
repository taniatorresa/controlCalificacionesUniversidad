class Teacher < ApplicationRecord

  has_many :subjects, through: :cycle_has_subjects
  has_many :school_cycles, through: :cycle_has_subjects

  has_many :cycle_has_subjects, :dependent => :destroy, :autosave => true , :inverse_of => :teacher

  validates :nombre, :apellido_paterno, :apellido_materno, :grado, :correo_electronico, :telefono, presence: true

  def nombre_maestro
  "#{nombre} #{apellido_paterno} #{apellido_materno}"
  end

end
