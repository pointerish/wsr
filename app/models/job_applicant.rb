class JobApplicant < ApplicationRecord
  include Hashid::Rails

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :name, presence: true
  validates :email, presence: true, email: true

  def to_param
    hashid
  end
end
