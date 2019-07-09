class Api::V1::ProjectsController < ApplicationController
  skip_before_action :authorized, only: [:create]
  before_action :find_project, only: [:update, :show]

  def index
    @projects = Project.all
    render json: @projects
  end

  def profile
    render json: { project: ProjectSerializer.new(current_project) }, status: :accepted
  end

  def update
    @project.update(project_params)
    if @project.save
      render json: @project, status: :accepted
    else
      render json: { errors: @project.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    @project.create(project_params)

    if @project.valid?
      render json: { project: ProjectSerializer.new(@project) }, status: :created
    else
      render json: {error: 'failed to create project'}, status: :not_acceptable
    end
  end

  private

  def project_params
    params.require(:project).permit(:link, :category, :affiliation, :region, :tags, :title, :description)
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
