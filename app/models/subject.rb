class Subject < ApplicationRecord
  belongs_to :group
  enum subject_type: ['UNAM','UAA']

  has_many :teachers, through: :cycle_has_subjects
  has_many :school_cycles, through: :cycle_has_subjects

  has_many :cycle_has_subjects, :dependent => :destroy, :autosave => true , :inverse_of => :subject
end
