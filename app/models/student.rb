class Student < ApplicationRecord
  has_many :period_has_group, through: :period_has_group_has_student
  has_many :period_has_group_has_student, :dependent => :destroy, :autosave => true
end
