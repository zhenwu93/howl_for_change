class Api::V1::ClientsController < ApplicationController
  skip_before_action :authorized, only: [:create]
  before_action :find_client, only: [:update, :show]

  def index
    @clients = Client.all
    render json: @clients
  end

  def profile
    render json: { client: ClientSerializer.new(current_client) }, status: :accepted
  end

  def update
    @client.update(client_params)
    if @client.save
      render json: @client, status: :accepted
    else
      render json: { errors: @client.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    @client.create(client_params)

    if @client.valid?
      @token = encode_token(client_id: @client_id)
      render json: { client: ClientSerializer.new(@client), jwt: @token }, status: :created
    else
      render json: {error: 'failed to create client'}, status: :not_acceptable
    end
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :password, :phone_number, :clientname)
  end

  def find_client
    @client = Client.find(params[:id])
  end

end
