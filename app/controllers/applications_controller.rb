class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :edit, :update, :destroy]

  def index
    @applications = Application.all
  end

  def new
    @application = Application.new
  end

  def create
    @application = Application.create(application_params)
    @application.save
  end

  def edit
  end

  def update
    @application.update(application_params)
  end

  def show
  end

  def destroy
    @application.destroy
    redirect_to applications_path
  end

  private

    def application_params
      params.require(:applications).permit(:title, :description, :link, :employer, :location, :date_applied, :notes, :status)
    end

    def set_application
      @application = Application.find_by(id: params[:id])
    end

end
