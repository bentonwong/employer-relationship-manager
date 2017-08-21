module ApplicationHelper

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def signed_in?
    !!current_user
  end

  private

    def authorized?
      redirect_to root_path if !signed_in?
    end

end
