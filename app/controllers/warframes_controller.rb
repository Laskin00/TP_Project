class WarframesController < ApplicationController
    def index
      @warframes = Warframe.all
    end

    def show
      @warframe = Warframe.find(params[:id])
      if @warframe == nil
        render '404'
      end
    end

    def new
      if current_user.permissions < 2
        render "Error"
      else
        @warframe = Warframe.new
      end
    end

    def create
      @warframe = Warframe.new(warframe_params)
      if @warframe.save
        flash[:success] = "You have successfully added a warframe!"
        redirect_to current_link + 'warframes/' + @warframe.id.to_s
      else
        render 'new'
      end
    end

    def edit
      @warframe = Warframe.find(params[:id])
    end

    def addFavorite
      if FavoriteWarframe.where(user_id: current_user, warframe_id: params[:id]).exists?
          warframe = FavoriteWarframe.find_by(user_id: current_user.id, warframe_id: params[:id])
          FavoriteWarframe.destroy(warframe.id)
      else
          FavoriteWarframe.create(user_id: current_user.id, warframe_id: params[:id])
      end

      @warframe = Warframe.find(params[:id])
      render 'show'
    end

    def update
      @warframe = Warframe.find(params[:id])
      if @warframe.update_attributes(warframe_params)
        flash[:success] = "Warframe updated"
        redirect_to @warframe
      else
        flash[:danger] = "Oops, an error occured. Please try again."
        render 'edit'
      end
    end

    def destroy
      Warframe.find(params[:id]).destroy
      flash[:success] = "Warframe deleted"
      render current_link + '/warframes'
    end


    private
    def warframe_params
      params.require(:warframe).permit(:name, :image_url, :neuropticsDropChance,:systemsDropChance, :blueprintDropChance, :chassisDropChance,:armor, :energy, :health, :shield, :mastery_rank,:description, :whereToGet)
    end

    def current_link
      if Rails.env.production?
          return "https://warframe-loot-wiki.herokuapp.com/"
      else
          return "http://localhost:3000/"
      end
    end
end
