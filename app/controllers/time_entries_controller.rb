class TimeEntriesController < ApplicationController
	def index
		@my_project = Project.find(params[:project_id])
		@my_entries = @my_project.time_entries

	end

	def new 
		@my_project = Project.find(params[:project_id])
		@my_entry = @my_project.time_entries.new
	end

	def create
		@my_project = Project.find(params[:project_id])
		@my_entry = @my_project.time_entries.new(
				hours: params[:time_entry][:hours],
				minutes: params[:time_entry][:minutes])

		if @my_entry.save
			redirect_to "/projects/#{@my_project.id}/time_entries"
		else
			render 'new'
		end

	end

	def edit
		@my_project = Project.find params[:project_id]
		@my_entry = @my_project.time_entries.find params[:id]

	end

	def update
		@my_project = Project.find_by(id: params[:project_id])
		@my_entry = @my_project.time_entries.find_by(id: params[:id])

		if @my_entry.update(hours: params[:time_entry][:hours],
				minutes: params[:time_entry][:minutes])

			redirect_to "/projects/#{@my_project.id}/time_entries"
		else
		render "edit"
		end	

	end

	

end
