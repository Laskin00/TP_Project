class ModsController < ApplicationController
    def index
        render :modView
    end

    def show
      @mod = Mod.find_by(id: params[:id])
      if @mod == nil
            render "shared/404"
      end
    end

    def warframe
      @warframe = Mod.where(mod_type: "warframe")
    end

    def weapon
      @weapon = Mod.where(mod_type: "weapon")
    end

    def new
        if current_user.permissions < 2
          render "shared/404"
        else
          @mod = Mod.new
        end
    end

    def create
      @mod = Mod.new(mod_params)
      @mod.mod_type = @mod.mod_type.downcase
      @mod.name = @mod.name.capitalize
      if @mod.save
        flash[:success] = "You have successfully added a mod!"
        redirect_to @mod
      else
        flash[:danger] = "You have entered something wrong. Try again."
        redirect_to new_mod_url
      end
    end

    def edit
      @mod = Mod.find(params[:id])
    end

    def update
      @mod = Mod.find(params[:id])
      if @mod.update_attributes(mod_params)
        flash[:success] = "Mod updated"
        redirect_to @mod
      else
        render 'edit'
      end
    end

    def destroy
      Mod.find(params[:id]).destroy
      flash[:success] = "Mod deleted"
      redirect_to root_url
    end

    def addFavorite
      if FavoriteMod.where(user_id: current_user, mod_id: params[:id]).exists?
          mod = FavoriteMod.find_by(user_id: current_user.id, mod_id: params[:id])
          FavoriteMod.destroy(mod.id)
      else
          FavoriteMod.create(user_id: current_user.id, mod_id: params[:id])
      end

      @mod = Mod.find(params[:id])
      redirect_to @mod
    end


private
    def mod_params
          params.require(:mod).permit(:name, :mod_type, :image_url, :whereToGet, :dropChance)
    end

end
