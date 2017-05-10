class Teacher < ApplicationRecord
   has_many :periods, through: :period_has_group
   has_many :subjects, through: :period_has_group

   has_many :period_has_group, :dependent => :destroy, :autosave => true , :inverse_of => :teacher
end
