class Ceshi::JobsController < ApplicationController
  def index
    @jobs = case params[:order]
             when 'by_lower_bound'
              Job.where(is_ceshi: true).published.order('wage_lower_bound DESC')
            when 'by_upper_bound'
              Job.where(is_ceshi: true).published.order('wage_upper_bound DESC')
            else
              Job.where(is_ceshi: true).published.order("created_at DESC")
            end
  end
  def show
    @job = Job.find(params[:id])
    @job.resumes = Resume.all
    if @job.is_hidden
      flash[:warning] = "you have no permission!"
      redirect_to ceshi_jobs_path
    end
  end
end
