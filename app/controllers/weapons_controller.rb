class WeaponsController < ApplicationController
    def index
        render :weaponView
    end

    def show
      @weapon = Weapon.find_by(name: params[:id])
      if @weapon == nil
            render "404"
      end
    end

    def new
        @weapon = Weapon.new
    end

    def create
      @weapon = Weapon.new(weapon_params)
      if @weapon.save
        flash[:success] = "You have successfully added a weapon!"
        # redirect_to current_link + 'weapons/' + @weapon.name ##da se razkomentira Todo kato napravi weapon vu
        redirect_to current_link + "weapons/new" #a tva da se mahne
      else
        flash[:danger] = "You have entered something wrong. Try again."
        redirect_to current_link + "weapons/new"
      end
    end



private
    def weapon_params
          params.require(:weapon).permit(:name, :image_url, :whereToGet, :dropChance, :weapon_type)
    end

    def current_link
        if Rails.env.production?
          return "https://warframe-loot-wiki.herokuapp.com/"
        else
          return "http://localhost:3000/"
        end
    end
end
