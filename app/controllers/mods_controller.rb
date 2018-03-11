class ModsController < ApplicationController
    def index
        render :modView
    end

    def show
      @mod = Mod.find_by(name: params[:id])
      if @mod == nil
            render "404"
      end
    end

    def new
        @mod = Mod.new
    end

    def create
      @mod = Mod.new(mod_params)
      if @mod.save
        flash[:success] = "You have successfully added a mod!"
        redirect_to current_link + 'mods/' + @mod.name
      else
        render 'new'
      end
    end



private
    def mod_params
          params.require(:mod).permit(:name, :image_url, :whereToGet, :dropChance)
    end

    def current_link
        if Rails.env.production?
          return "https://warframe-loot-wiki.herokuapp.com/"
        else
          return "http://localhost:3000/"
        end
    end
end
