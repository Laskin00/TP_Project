class WeaponsController < ApplicationController
    def index
        render :weaponView
    end

    def show
      @weapon = Weapon.find(params[:id])
      if @weapon == nil
            render "404"
      end
    end

    def new
        @weapon = Weapon.new
    end

    def primary
      @primary = Weapon.where(:weapon_type == "primary") || Weapon.where(:weapon_type == "Primary")
    end

    def secondary
      @secondary = Weapon.where(:weapon_type == "secondary") || Weapon.where(:weapon_type == "Secondary")
    end

    def melee
      @melee = Weapon.where(:weapon_type == "melee") || Weapon.where(:weapon_type == "Melee")
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


    def edit
      @weapon = Weapon.find(params[:id])
    end

    def update
      @weapon = Weapon.find(params[:id])
      if @weapon.update_attributes(weapon_params)
        flash[:success] = "Weapon updated"
        redirect_to @weapon
      else
        render 'edit'
      end
    end

    def destroy
      Weapon.find(params[:id]).destroy
      flash[:success] = "Weapon deleted"
      render current_link + '/weapons'
    end


private
    def weapon_params
          params.require(:weapon).permit(:weapon_type, :name, :image_url, :whereToGet, :dropChance)
    end

    def current_link
        if Rails.env.production?
          return "https://warframe-loot-wiki.herokuapp.com/"
        else
          return "http://localhost:3000/"
        end
    end
end
