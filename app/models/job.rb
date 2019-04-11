class Job < ApplicationRecord
  belongs_to :npc
  has_many :job_options
end
