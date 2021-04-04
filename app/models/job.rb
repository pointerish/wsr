class Job < ApplicationRecord
  include Hashid::Rails

  has_one :poster

  validates :title, presence: true
  validates :location, presence: true
  validates :description, presence: true

  def to_param
    hashid
  end
end
