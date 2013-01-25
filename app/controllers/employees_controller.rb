class EmployeesController < ApplicationController
	
	def index
		@employees = Employee.all
	end

	def show
		@employee = Employee.find(params[:id])
	end
	
	def edit
		@employee = Employee.find(params[:id])
	end

	
	def update
		@employee = Employee.find(params[:id])
		if @employee.update_attributes(params[:employee]) 
	      	flash[:success] = "This employee was updated."
			redirect_to :action => 'show', :id => @employee
		else
			redirect_to :action => 'edit'
		end

	end

	
	def create
		@employee = Employee.new(params[:employee])
		if @employee.save
	      	flash[:success] = "New Employee Was Added"
			redirect_to @employee
		else
			render 'new'
		end
	end
	
	def new
		@employee = Employee.new
	end
	
	def delete
	end
end
