class RelicsController < ApplicationController
    def index
        render :relicView
    end
    def show
        @relic = Relic.find_by(name: params[:id])
        if @relic == nil
              render "404"
        end
      end

      def new
          @relic = Relic.new
      end

      def create
        @relic = Relic.new(relic_params)
        if @relic.save
          flash[:success] = "You have successfully added a relic!"
          redirect_to current_link + 'relics/' + @relic.name
        else
          render 'new'
        end
      end



  private
      def relic_params
            params.require(:relic).permit(:name, :image_url, :whereToGet, :dropChance)
      end

      def current_link
          if Rails.env.production?
            return "https://warframe-loot-wiki.herokuapp.com/"
          else
            return "http://localhost:3000/"
          end
      end
end
