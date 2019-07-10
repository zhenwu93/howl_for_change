class JobListingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :client_id
end
