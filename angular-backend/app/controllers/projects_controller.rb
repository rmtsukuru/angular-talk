class ProjectsController < ApplicationController
  def index
    respond_to do |format|
      format.json { render :json => Project.all }
    end
  end

  def create
    project = Project.create(project_params)

    respond_to do |format|
      if project
        format.json { render :json => project }
      else

      end
  end

  def update
  end

  def destroy
  end

  private

  def project_params
    params.require(:project).permit(:title, :description)
  end
end
