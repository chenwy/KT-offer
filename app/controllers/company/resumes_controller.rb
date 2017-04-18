class Company::ResumesController < ApplicationController
  before_action :authenticate_user!
  before_action :validate_user_role
  layout "company"

  def index
    @job = Job.find(params[:job_id])
    @resumes = @job.resumes.order("created_at DESC")
  end

  def validate_user_role
    render_user_role(current_user, "HR")
  end
end
