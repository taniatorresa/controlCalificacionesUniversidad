class CycleHasSubject < ApplicationRecord
  belongs_to :school_cycle, :inverse_of => :cycle_has_subject
  belongs_to :subject, :inverse_of => :cycle_has_subject
  belongs_to :teacher, :inverse_of => :cycle_has_subject
end
