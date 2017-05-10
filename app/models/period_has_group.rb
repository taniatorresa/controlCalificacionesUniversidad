class PeriodHasGroup < ApplicationRecord
  belongs_to :period, :inverse_of => :period_has_group
  belongs_to :subject, :inverse_of => :period_has_group
  belongs_to :teacher, :inverse_of => :period_has_dgroup

  has_many :period_has_group_has_student, :dependent => :destroy, :autosave => true , :inverse_of => :period_has_group_has_student

  has_many :students, through: :period_has_group_has_student

  validates_presence_of :period
end
