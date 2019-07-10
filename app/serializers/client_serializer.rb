class ClientSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :company_website, :employees, :industry, :email, :phone_number
end
