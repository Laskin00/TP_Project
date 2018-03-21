class RelicsController < ApplicationController
    def index
        render :relicView
    end
    def show
        @relic = Relic.find_by(params[:id])
        if @relic == nil
              render "404"
        end
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
