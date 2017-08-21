class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update]
  before_action :authorized?

  def index
    @jobs = Job.all
  end

  def new
    @jobs = Job.new
  end

  def create
    @job = Job.new(job_params)
  end

  def edit
  end

  def update
    update_job
  end

  def show
  end

  private

    def job_params
      params.require.permit(:name, :title, :posting_url, :description, :employer_id, :user_id)
    end

    def save_job
      if @job.save
        redirect_to @job
      else
        render :new
      end
    end

    def update_job
      if @job.update(matter_params)
        redirect_to @job
      else
        redirect_to edit_job_path(@job)
      end
    end

end
