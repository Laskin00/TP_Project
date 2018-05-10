class FavoritesController < ApplicationController
  def index
    @mods = FavoriteMod.where(user_id: current_user.id)
    @weapons = FavoriteWeapon.where(user_id: current_user.id)
    @warframes = FavoriteWarframe.where(user_id: current_user.id)
    @relics = FavoriteRelic.where(user_id: current_user.id)
  end
end
