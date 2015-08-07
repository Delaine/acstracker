class JobsController < ApplicationController
	include JobsHelper
	
	def index
		@jobs = Job.all
	end

	def show
		@job = Job.find(params[:id])
	end

	def new
		@job = Job.new
	end

	def create
		@job = Job.new(job_params)
  		@job.save

  		flash.notice = "Job '#{@job.name}' Created!"

  		redirect_to job_path(@job)
	end

	def destroy
		@job = Job.find(params[:id])
		@job.destroy

		flash.notice = "Job '#{@job.name}' Deleted!"

		redirect_to jobs_path
	end

	def edit
		@job = Job.find(params[:id])
	end

	def update
		@job = Job.find(params[:id])
		@job.update(job_params)

		flash.notice = "Job '#{@job.name}' Updated!"

		redirect_to job_path(@job)
	end
end
