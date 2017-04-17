class Company::JobsController < ApplicationController
  before_action :authenticate_user!
  before_action :validate_user_role
  layout "company"

  def index
    @jobs = Job.where(user: current_user).recent.paginate(page: params[:page], per_page: 10)
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def edit
    @job = Job.find(params[:id])
  end

  def create
    @job = Job.new(job_params)
    @job.user = current_user
    if @job.save
      redirect_to company_jobs_path
    else
      flash[:alert] = @job.errors.full_messages
      render :new
    end
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to company_jobs_path, notice: I18n.t("updateMsg")
    else
      render :edit
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to company_jobs_path, alert: I18n.t("deleteMsg")
  end

  #发布招聘信息
  def publish
    @job = Job.find(params[:id])
    @job.publish!
    redirect_to company_jobs_path
  end

  #隐藏招聘信息
  def hide
    @job = Job.find(params[:id])
    @job.hide!
    redirect_to company_jobs_path
  end

  #验证当前用户的角色，只用是企业用户才能进行操作
  def validate_user_role
    render_user_role(current_user, "HR")
  end

  private
  def job_params
    params.require(:job).permit(:title, :description, :wage_lower_bound, :wage_upper_bound, :contact_email, :is_hidden)
  end
end
