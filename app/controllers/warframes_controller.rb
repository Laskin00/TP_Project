class WarframesController < ApplicationController
    def index
      render :warframeView
    end

    def show
      @arframe = Warframe.find_by(name: params[:id])
      if @arframe == nil
      end
    end

    def new
      @arframe = Warframe.new
    end

    def create
      @arframe = Warframe.new(warframe_params)
      if @arframe.save
        flash[:success] = "You have successfully added a warframe!"
        redirect_to current_link + 'warframes/' + @arframe.name
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
