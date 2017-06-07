class CycleHasSubject < ApplicationRecord

  belongs_to :school_cycle
  belongs_to :subject
  belongs_to :teacher

  has_many :student_has_subjects, dependent: :destroy
  has_many :students, through: :student_has_subjects, dependent: :destroy
end
