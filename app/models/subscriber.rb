class Subscriber < ApplicationRecord
  validates :email, presence: true, email: true
end
