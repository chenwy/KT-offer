class JobsController < ApplicationController

  def index
    @jobs = case params[:order]
            when "order_by_lower"
              Job.published.order("wage_lower_bound DESC").paginate(page: params[:page], per_page: 10)
            when "order_by_lower"
              Job.published.order("wage_upper_bound DESC").paginate(page: params[:page], per_page: 10)
            else
              Job.published.recent.paginate(page: params[:page], per_page: 10)
            end
  end

  def show
    @job = Job.find(params[:id])
  end

end
