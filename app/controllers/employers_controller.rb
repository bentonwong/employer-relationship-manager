class EmployersController < ApplicationController
  before_action :set_employer, only: [:show, :update, :edit]
  before_action :authorized?

  def index
    @employers = Employer.all
  end

  def new
    @employer = Employer.new
  end

  def create
    @employer = Employer.new(employer_params)
  end

  def edit
  end

  def update
    @employer.update(employer_params)
    redirect_to @employer
  end

  def show
  end

  private

    def employer_params
      params.require(:employer).permit(:name, :website, :location)
    end

    def set_employer
      @employer = Employer.find_by(id: params[:id])
    end

    def save_employer
      if @employer.save
        redirect_to @employer
      else
        render :new
      end
    end

end
