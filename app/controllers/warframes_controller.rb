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
end
