class ResumesController < ApplicationController
	def index
		@resumes=Resume.all
	end

	def new
		@resume=Resume.new
	end

	def show
		@resume=Resume.find(params[:id])
	end

	def create
		@resume=Resume.new(resume_params)
		
		@resume.save
		redirect_to resume_path(@resume)
	end

	def resume_params
		params.require(:resume).permit(:name, :department,:college, :place, :mobile, :objective,:education, :skills, :hobbies, :training)
	end

	def edit
		@resume=Resume.find(params[:id])
	end

	def update
		@resume=Resume.find(params[:id])
		@resume.update(resume_params)
		flash.notice="Resume '#{@resume.name}' Updated!"
		redirect_to resume_path(@resume)
	end

	def destroy
		@resume=Resume.find(params[:id])
		@resume.destroy
		redirect_to resumes_path
	end

end
