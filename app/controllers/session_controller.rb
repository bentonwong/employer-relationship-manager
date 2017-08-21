class SessionController < ApplicationController
  before_action :authorized?, only: [:destroy]

  def home
    redirect_to current_user if signed_in?
  end

  def new
    redirect_to current_user if signed_in?
    @error = nil
    @user = User.new
  end

  def create
    if params[:user][:email].blank? || params[:user][:password].blank?
      redirect_to_signin_form_with_errors('ALERT: Email or password cannot be left blank!')
    else
      validate_signin
    end
  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end

  private

    def validate_signin

    end

    def start_new_session
      session.clear
      session[:user_id] = @user.id
      redirect_to @user
    end

    def redirect_to_signin_form_with_errors(msg)
      @error = msg
      @user = User.new
      render :new
    end
end
