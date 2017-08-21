class User < ApplicationRecord
  has_many :applications
  has_many :jobs, through: :applications
  validates :name, :email, presence: :true
  validates :email, uniqueness: :true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates :password, length: { minimum: 8 }, allow_nil: true
  has_secure_password
  
end
