class UsersController < ApplicationController
  def index
    @users = Users.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
  end

  def edit
    redirect_to user_path(current_user) if session[:user_id] != params[:id].to_i
  end

  def update
    @user.update(user_params)
    redirect_to @user
  end

  def show
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def set_user
      @user = User.find_by(id: params[:id])
    end

    def save_user
      if @user.save
        if !sign_in?
          session.clear
          session[:user_id] = @user.id
        end
        redirect_to @lawyer
      else
        render :new
      end
    end
    
end
