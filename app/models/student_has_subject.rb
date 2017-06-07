class StudentHasSubject < ApplicationRecord

  attr_accessor :school_cycle, :subject

  enum student_subject_type: ['Normal','Repetidor']

  belongs_to :student
  belongs_to :cycle_has_subject

  has_many :presences, :dependent => :destroy
  has_many :scores, :dependent => :destroy

end
