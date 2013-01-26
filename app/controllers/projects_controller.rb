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
		@project = project.new(params[:project])
		if @project.save
	      	flash[:success] = "A new project was created."
			redirect_to @project
		else
			render 'new'
		end
	end
end
