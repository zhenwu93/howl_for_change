class Client < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
  has_many :job_listings
  has_many :users, :through => :job_listings
end
