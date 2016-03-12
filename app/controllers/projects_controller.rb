class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    project = Project.create(refugee_id: current_refugee.id, title: params[:project][:title], description: params[:project][:description])

    if project.save
      flash[:info] = "Merci, votre projet a été envoyé à XX"

      redirect_to root_path
    else
      flash[:info] = "Une erreur est survenue"

      redirect :back
    end
  end

  def edit
  end

  def update
  end

end