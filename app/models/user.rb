class User < ApplicationRecord
  has_many :job_listings
  has_many :clients, :through => :job_listings
end
