class Teacher < ApplicationRecord
   has_many :school_cycles, through: :period_has_group
   has_many :subjects, through: :period_has_group

   has_many :cycle_has_subject, :dependent => :destroy, :autosave => true , :inverse_of => :teacher
end
