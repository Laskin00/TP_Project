class RelicsController < ApplicationController
    def index
        render :relicView
    end
    def show
        @relic = Relic.find_by(id: params[:id])
        if @relic == nil
              render "404"
        end
      end

      def lith
        @lith = Relic.where(relic_type: "lith")
      end

      def meso
        @meso = Relic.where(relic_type: "meso")
      end

      def neo
        @neo = Relic.where(relic_type: "neo")
      end

      def axi
        @axi = Relic.where(relic_type: "axi")
      end

      def new
        if current_user.permissions < 2
          render "Error"
        else
          @relic = Relic.new
        end
      end

      def addFavorite
        if FavoriteRelic.where(user_id: current_user, relic_id: params[:id]).exists?
            relic = FavoriteRelic.find_by(user_id: current_user.id, relic_id: params[:id])
            FavoriteRelic.destroy(relic.id)
        else
            FavoriteRelic.create(user_id: current_user.id, relic_id: params[:id])
        end

        @relic = Relic.find(params[:id])
        render 'show'
      end

      def create
        @relic = Relic.new(relic_params)
        @relic.relic_type = @relic.name.downcase
        @relic.name = @relic.relic_type.split(' ').first.capitalize + " " + @relic.relic_type.split(' ').second.capitalize
        @relic.relic_type = @relic.relic_type.split(' ').first

        relic_type = @relic.relic_type
        if relic_type == "lith"
            @relic.image_url = "https://image.ibb.co/eBhqXx/lith_wf_wiki.png"
        elsif relic_type == "meso"
            @relic.image_url = "https://image.ibb.co/msFusx/meso_wf_wiki.png"
        elsif relic_type == "neo"
            @relic.image_url = "https://image.ibb.co/gNQ5zc/neo_wf_wiki.png"
        elsif relic_type == "axi"
            @relic.image_url = "https://image.ibb.co/gb4b5H/axi_wf_wiki.png"
        end
        # @relic.name = @relic.name.capitalize
        if @relic.save
          flash[:success] = "You have successfully added a relic!"
          redirect_to current_link + 'relics/new'
        else
          redirect_to current_link + 'relics/new'
        end
      end


    def edit
      @relic = Relic.find(params[:id])
    end

    def update
      @relic = Relic.find(params[:id])
      if @relic.update_attributes(relic_params)
        flash[:success] = "Relic updated"
        redirect_to @relic
      else
        render 'edit'
      end
    end

    def destroy
      Relic.find(params[:id]).destroy
      flash[:success] = "Relic deleted"
      render current_link + '/relics'
    end

  private
      def relic_params
            params.require(:relic).permit(:name, :image_url, :whereToGet, :dropChance, :relic_type)
      end

      def current_link
          if Rails.env.production?
            return "https://warframe-loot-wiki.herokuapp.com/"
          else
            return "http://localhost:3000/"
          end
      end
end
