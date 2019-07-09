class Api::V1::JobsListingsController < ApplicationController
  skip_before_action :authorized, only: [:create]
  before_action :find_job_listing, only: [:update, :show]

  def index
    @job_listings = JobListing.all
    render json: @job_listings
  end

  def update
    @job_listing.update(job_listing_params)
    if @job_listing.save
      render json: @job_listing, status: :accepted
    else
      render json: { errors: @job_listing.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    @job_listing.create(job_listing_params)

    if @job_listing.valid?
      render json: { job_listing: JobListingSerializer.new(@job_listing) }, status: :created
    else
      render json: {error: 'failed to create job_listing'}, status: :not_acceptable
    end
  end

  private

  def job_listing_params
    params.require(:job_listing).permit(:client_id, :user_id, :job_title, :job_description, :compensation,
    :category, :countdown, :mediatype, :inspiration, :rules)
  end

  def find_job_listing
    @job_listing = JobListing.find(params[:id])
  end

end
