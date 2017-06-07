class StudentHasSubject < ApplicationRecord
  enum student_subject_type: ['Normal','Repetidor']

  belongs_to :student
  belongs_to :cycle_has_subject
  has_many :presences, :dependent => :destroy
  has_many :scores, :dependent => :destroy

  accepts_nested_attributes_for :cycle_has_subject, reject_if: :all_blank, allow_destroy: true
  

end
