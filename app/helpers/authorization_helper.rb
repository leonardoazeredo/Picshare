module AuthorizationHelper
private
  def confirm_login
    unless current_user
      redirect_to login_path, notice: "You must log in to do that."
    end
  end
  def confirm_owner(resource)
    unless resource.user == current_user
      redirect_to root_path, alert: "You don't have permission to do that."
    end
  end
end
