module ApplicationHelper

  private

    def authorized?
      redirect_to root_path if !signed_in?
    end
end
