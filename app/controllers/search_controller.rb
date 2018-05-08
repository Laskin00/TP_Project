class SearchController < ApplicationController
  def search
    @name = params[:q]


    Warframe.all.each do |w|
      if @name == w.name
        @warframe = w
        render 'warframes/show'
        flash[:success]
        return
      end
    end

    Weapon.all.each do |w|
      if @name == w.name
        @weapon = w
        render 'weapons/show'
        flash[:success]
        return
      end
    end

    Mod.all.each do |m|
      if @name == m.name
        @mod = m
        render 'mods/show'
        flash[:success]
        return
      end
    end

    Relic.all.each do |r|
      if @name == r.name
        @relic = r
        render 'relics/show'
        flash[:success]
        return
      end
    end

    User.all.each do |u|
        if @name == u.name.split(' ').first
          if logged_in?
            @user = u
            render 'users/show'
            flash[:success]
            return
          else
          flash[:danger] = "You cannot see other users profiles while not logged in !"
          render 'users/landingPage'
          return
        end
      end
    end

    flash[:danger] = "There is no item or user with such name."
    render 'users/landingPage'


  end
end
