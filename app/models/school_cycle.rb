class SchoolCycle < ApplicationRecord
  belongs_to :career
  has_many :periods,  dependent: :destroy

   has_many :cycle_has_subject, :dependent => :destroy, :autosave => true , :inverse_of => :school_cycle
end
