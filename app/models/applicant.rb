class Applicant < ApplicationRecord
  validates :email, presence: true, email: true
  validates :name, presence: true
  
  has_one_attached :resume
  has_one_attached :cover_letter

  belongs_to :job
end
