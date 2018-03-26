class RelicsController < ApplicationController
    def index
        render :relicView
    end
    def show
        @relic = Relic.find_by(relic_type: params[:type])
        i = 0
        @relic.each do |w|
            if i == params[:id].to_i - 1
                @relic = w
                break
            end
            i += 1
        end
        if @relic == nil
              render "404"
        end
      end

      def lith
        @relic = Relic.where(relic_type: "lith")
      end

      def meso
        @relic = Relic.where(relic_type: "meso")
      end

      def neo
        @relic = Relic.where(relic_type: "neo")
      end

      def axi
        @relic = Relic.where(relic_type: "axi")
      end

      def new
        if current_user.permissions < 2
          render "Error"
        else
          @relic = Relic.new
        end
      end

      def create
        @relic = Relic.new(relic_params)
        @relic.relic_type = @relic.relic_type.downcase
        @relic.name = @relic.name.capitalize
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
