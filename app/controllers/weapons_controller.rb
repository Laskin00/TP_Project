class WeaponsController < ApplicationController
    def index
        render :weaponView
    end

    def show
      if params[:id].to_f.to_s == params[:id].to_s || params[:id].to_i.to_s == params[:id].to_s
        @weapon = Weapon.find(params[:id])
      else
        @weapon = Weapon.find_by(name: params[:id])
      end
      if @weapon == nil
        render "shared/404"
      else
        current_views = @weapon.views
        @weapon.update_attributes(views: current_views+1)
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
          weapon = FavoriteWeapon.find_by(user_id: current_user.id, weapon_id: params[:id])
          FavoriteWeapon.destroy(weapon.id)
      else
          FavoriteWeapon.create(user_id: current_user.id, weapon_id: params[:id])
      end

      @weapon = Weapon.find(params[:id])
      render 'show'
    end

    def create
      @weapon = Weapon.new(weapon_params)
      @weapon.views = 0
      @weapon.weapon_type = @weapon.weapon_type.downcase
      @weapon.name = @weapon.name.capitalize
      @weapon.attack_type = @weapon.attack_type.capitalize
      if @weapon.save
        flash[:success] = "You have successfully added a weapon!"
        redirect_to @weapon
      else
        flash[:danger] = "You have entered something wrong. Try again."
        redirect_to root_url
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
      redirect_to root_url
    end


private
    def weapon_params
          params.require(:weapon).permit(:weapon_type, :name, :image_url, :whereToGet, :dropChance, :mastery_rank, :attack_type, :impact, :puncture, :slash, :elecricity, :fire, :toxin, :cold, :blast, :corrosive, :gas, :magnetic, :radiation, :viral)
    end

end
