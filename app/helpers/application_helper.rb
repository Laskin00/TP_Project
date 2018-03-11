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
end
