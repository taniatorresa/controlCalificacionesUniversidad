class Score < ApplicationRecord
  attr_accessor :student, :subject

  belongs_to :student_has_subject
  enum score_type: ['Departamental A','Departamental B','Parcial','Final A', 'Final B','Promedio Final' ]

end
