class Period < ApplicationRecord
  belongs_to :school_cycle
  enum period_type: ['1','2','3']

  has_many :teachers, through: :period_has_group
  has_many :subjects, through: :period_has_group

  has_many :period_has_group, :dependent => :destroy, :autosave => true , :inverse_of => :period
end

