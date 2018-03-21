module ApplicationHelper
  def current_link
    if Rails.env.production?
        return "https://warframe-loot-wiki.herokuapp.com/"
    else
        return "http://localhost:3000/"
    end
  end

  def user_rank(user)
    if user.permissions == 3
      return "Admin"
    elsif user.permissions == 2
      return "Moderator"
    elsif user.permissions == 1
      return "Paid"
    else
      return "Free"
    end
  end

  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(:remember, cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

  def not_enough_permissions
    if current_user.permissions != 3 || current_user.permissions != 2
      render "Error"
      return 1
    end
    return 0
  end
end
