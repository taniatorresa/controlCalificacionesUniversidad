class SchoolCycle < ApplicationRecord
  belongs_to :career
  has_many :periods,  dependent: :destroy
end
