class FavoritesController < ApplicationController
  def index
    if current_user != nil
      @mods = FavoriteMod.where(user_id: current_user.id)
      @weapons = FavoriteWeapon.where(user_id: current_user.id)
      @warframes = FavoriteWarframe.where(user_id: current_user.id)
      @relics = FavoriteRelic.where(user_id: current_user.id)
    else
      render "shared/login_error"
    end
  end
end
