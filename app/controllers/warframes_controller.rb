class WarframesController < ApplicationController
    def index
        render :warframeView
    end

    def show
      @warframe = Warframe.find_by(name: params[:id])
      if @warframe == nil
        render "404"
      end
    end

    def new
      @warframe = Warframe.new
    end

    def create
      @warframe = Warframe.new(warframe_params)
      if @warframe.save
        flash[:success] = "You have successfully added a warframe!"
        redirect_to @warframe
      else
        render 'new'
      end
    end



    private
    def warframe_params
      params.require(:warframe).permit(:name, :image_url, :whereToGet, :neuropticsDropChance, :systemsDropChance, :blueprintDropChance, :chassisDropChance)
    end

    def current_link
      if Rails.env.production?
          return "https://warframe-loot-wiki.herokuapp.com/"
      else
          return "http://localhost:3000/"
      end
    end
end
