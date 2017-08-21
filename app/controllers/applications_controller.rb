class ApplicationsController < ApplicationController

  def index
    @applications = Application.all
  end

  def new
    @application = Application.new
  end

  def create
    @application = Application.create(application_params)
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
    @application.destroy
    redirect_to applications_path
  end

  private

    def application_params
      params.require(:applications).permit(:date, :status, :job_id, :notes)
    end

    def set_application
      @application = Application.find_by(id: params[:id])
    end

end
