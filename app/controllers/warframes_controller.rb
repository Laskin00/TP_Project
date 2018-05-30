class WarframesController < ApplicationController
    def index
      @warframes = Warframe.all
    end

    def show
      if params[:id].to_f.to_s == params[:id].to_s || params[:id].to_i.to_s == params[:id].to_s
        @warframe = Warframe.find(params[:id])
      else
        @warframe = Warframe.find_by(name: params[:id])
      end
      if @warframe == nil
        render "shared/404"
      else
        current_views = @warframe.views
        @warframe.update_attributes(views: current_views+1)
      end
    end

    def new
      if current_user.permissions < 2
        render "shared/404"
      else
        @warframe = Warframe.new
      end
    end

    def create
      @warframe = Warframe.new(warframe_params)
      @warframe.views = 0
      if @warframe.save
        flash[:success] = "You have successfully added a warframe!"
        redirect_to @warframe
      else
        flash[:danger] = "There were mistakes in the form."
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
      redirect_to root_url
    end

    private
    def warframe_params
      params.require(:warframe).permit(:name, :image_url, :neuropticsDropChance,:systemsDropChance, :blueprintDropChance, :chassisDropChance,:armor, :energy, :health, :shield, :mastery_rank, :description, :whereToGet, :views)
    end

end
