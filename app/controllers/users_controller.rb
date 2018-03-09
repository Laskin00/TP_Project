class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end
  def landing
    render :landingPage
  end

  def create
    @user = User.new(user_params)
    defaultImage = "https://img-fanburst.freetls.fastly.net/pjbL8r-DgAVxsfgA0ijKasVEae8=/400x400/cx2.fanburst.com/artwork/560cebff-1cf1-4bf0-9ab7-15623ffba8da.png"
    @user.image_url = defaultImage
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Warframe Loot Wiki!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
