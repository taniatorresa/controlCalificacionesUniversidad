class PeriodHasGroupHasStudent < ApplicationRecord

  belongs_to :students
  has_many :scores, dependent: :destroy
  has_many :presence, dependent: :destroy

  belongs_to :period_has_group

  validates_presence_of :student

  enum student_subject_type:  ['Normal', 'Repetidor']
end
