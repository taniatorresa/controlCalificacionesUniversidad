class Subject < ApplicationRecord
  belongs_to :group
  enum subject_type: ['UNAM','UAA']

  has_many :teachers, through: :period_has_group
  has_many :periods, through: :period_has_group

  has_many :period_has_group, :dependent => :destroy, :autosave => true , :inverse_of => :subject
end
