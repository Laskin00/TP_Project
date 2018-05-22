class SearchController < ApplicationController
  def search
        name = params[:q]
        name = name.downcase
        if name != nil && name != ""
          @mods = Mod.where("name like ?" , "%#{name}%")
          @weapons = Weapon.where("name like ?" , "%#{name}%")
          @warframes = Warframe.where("name like ?" , "%#{name}%")
          @relics = Relic.where("name like ?" , "%#{name}%")
        else
          render "shared/404"
        end
  end
end
