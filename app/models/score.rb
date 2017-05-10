class Score < ApplicationRecord
  belongs_to :period_has_group_has_student
  enum score_type: ['Departamental A','Departamental B','Parcial','Final A', 'Final B','Promedio Final' ]
end
