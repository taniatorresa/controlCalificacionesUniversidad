class Subject < ApplicationRecord
  belongs_to :group
  enum subject_type: ['UNAM','UAA']

  has_many :teachers, through: :period_has_group
  has_many :school_cycles, through: :period_has_group

  has_many :cycle_has_subject, :dependent => :destroy, :autosave => true , :inverse_of => :subject
end
