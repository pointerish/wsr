class Job < ApplicationRecord
  include Hashid::Rails

  has_one :poster
  has_many :job_applications

  validates :title, presence: true
  validates :location, presence: true
  validates :description, presence: true

  has_rich_text :description

  def to_param
    hashid
  end
end
