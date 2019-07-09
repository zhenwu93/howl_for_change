class ApplicationController < ActionController::API
  def encode_token(payload)
    JWT.encode(payload, ENV['secret'])
  end

  def auth_header
   request.headers['Authorization']
 end

  def decoded_token(token)
       JWT.decode(token, ENV['secret'][0]
  end
end
