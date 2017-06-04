class Student < ApplicationRecord
  has_many :cycle_has_subjects, through: :student_has_subjects
  has_many :student_has_subjects, :dependent => :destroy, :autosave => true

  def nombre_estudiante
  "#{nombre} #{apellido_paterno} #{apellido_materno}"
    end
end
