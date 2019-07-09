class JobListing < ApplicationRecord
  belongs_to :users, required: false
  belongs_to :clients, required: false
end
