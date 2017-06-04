class SchoolCycle < ApplicationRecord
  belongs_to :career
  has_many :periods,  dependent: :destroy

  has_many :teachers, through: :cycle_has_subjects
  has_many :subjects, through: :cycle_has_subjects
  has_many :cycle_has_subjects, :dependent => :destroy
end
