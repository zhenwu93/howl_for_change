class Project < ApplicationRecord
  belongs_to :users, required: false
end
