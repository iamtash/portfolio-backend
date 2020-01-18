class ProjectsController < ApplicationController
  def index
    projects = Project.all
    render json: projects.to_json()
  end

  def create
    project = Project.new(project_params)
    if project.save
        render json: project.to_json()
    end
  end

  def update
  end

  def destroy
  end

  private 
  def project_params
      params.require(:project).permit(
          :title,
          :github_url,
          :demo_url,
          :description
      )
  end
end
