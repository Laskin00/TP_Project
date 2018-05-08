class SearchController < ApplicationController
  def search
    @name = params[:q]
    @item = nil

    Warframe.all.each do |w|
      if @name == w.name
        @warframe = w
        render 'warframes/show'
        @item = w
      end
    end

    Weapon.all.each do |w|
      if @name == w.name
        @weapon = w
        render 'weapons/show'
        @item = w
      end
    end

    Mod.all.each do |m|
      if @name == m.name
        @mod = m
        render 'mods/show'
        @item = m
      end
    end

    Relic.all.each do |r|
      if @name == r.name
        @relic = r
        render 'relics/show'
        @item = r
      end
    end

    User.all.each do |u|
      if @name == u.name.split(' ').first
        @user = u
        render 'users/show'
        @item = u
      end
    end

    if @item == nil
      flash[:danger] = "There is no item or user with such name."
      render 'users/landingPage'
    end

  end
end
