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
end
