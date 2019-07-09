class Client < ApplicationRecord
  has_many :job_listings
  has_many :users, :through => :job_listings
end
