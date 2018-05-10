class WeaponsController < ApplicationController
    def index
        render :weaponView
    end

    def show
      @weapon = Weapon.find_by(id: params[:id])
      if @weapon == nil
            render "Error"
      end
    end

    def new
      if current_user.permissions < 2
        render "Error"
      else
        @weapon = Weapon.new
      end
    end

    def primary
      @primary = Weapon.where(weapon_type: "primary")
    end

    def secondary
      @secondary = Weapon.where(weapon_type: "secondary")
    end

    def melee
      @melee = Weapon.where(weapon_type: "melee")
    end


    def addFavorite
      if FavoriteWeapon.where(user_id: current_user, weapon_id: params[:id]).exists?
          FavoriteWeapon.where(user_id: current_user.id, weapon_id: params[:id]).destroy(1)
      else
          FavoriteWeapon.create(user_id: current_user.id, weapon_id: params[:id])
      end

      @weapon = Weapon.find(params[:id])
      render 'show'
    end

    def create
      @weapon = Weapon.new(weapon_params)
      @weapon.weapon_type = @weapon.weapon_type.downcase
      @weapon.name = @weapon.name.capitalize
      @weapon.attack_type = @weapon.attack_type.capitalize
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
          params.require(:weapon).permit(:weapon_type, :name, :image_url, :whereToGet, :dropChance, :mastery_rank, :attack_type, :impact, :puncture, :slash, :elecricity, :fire, :toxin, :cold, :blast, :corrosive, :gas, :magnetic, :radiation, :viral)
    end

    def current_link
        if Rails.env.production?
          return "https://Weapon-loot-wiki.herokuapp.com/"
        else
          return "http://localhost:3000/"
        end
    end
end
