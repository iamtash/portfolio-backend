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
    project = Project.find_by(id: params[:id])
    if project 
      if params[:like]
        project.update(likes: project.likes + 1) 
      else
        project.update(project_params)
      end
      render json: project.to_json()
    end
  end

  def destroy
    project = Project.find_by(id: params[:id])
    project.destroy
    render json: project.to_json(only: [:id])
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
