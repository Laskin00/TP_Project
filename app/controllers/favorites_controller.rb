class FavoritesController < ApplicationController
  def index
    if current_user != nil
      @mods = FavoriteMod.where(user_id: current_user.id)
      @weapons = FavoriteWeapon.where(user_id: current_user.id)
      @warframes = FavoriteWarframe.where(user_id: current_user.id)
      @relics = FavoriteRelic.where(user_id: current_user.id)
    else
      flash[:danger] = "You must be logged in to see your favorite items"
      render "shared/404"
    end
  end
end
