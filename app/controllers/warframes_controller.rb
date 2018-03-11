class WarframesController < ApplicationController
    def index
      render :warframeView
    end

    def show
      @_warframe = Warframe.find_by(name: params[:id])
      if @_warframe == nil
        render "404"
      end
    end

    def new
      @_warframe = Warframe.new
    end

    def create
      @_warframe = Warframe.new(warframe_params)
      if @_warframe.save
        flash[:success] = "You have successfully added a warframe!"
        redirect_to current_link + 'warframes/' + @_warframe.name
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
