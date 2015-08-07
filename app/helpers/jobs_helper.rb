module JobsHelper

	def job_params
		params.require(:job).permit(:name, :tech_number, :account_number, :points, :date, :finding_code)
	end

end
