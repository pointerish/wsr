class JobApplication < ApplicationRecord
  belongs_to :JobApplicant
  belongs_to :Job
end
