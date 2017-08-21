class Employer < ApplicationRecord
  has_many :jobs
  has_many :applications, through: :jobs
  validates :name, :website, :location, presence: :true
end
