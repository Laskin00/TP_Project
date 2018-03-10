class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def index
    @users = User.paginate(page: params[:page])
  end

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

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  def make_admin
    User.find(params[:id]).update_attribute(permissions: 3)
    flash[:success] = "User is now admin"
    redirect_to users_url
  end

  def make_moderator
    User.find(params[:id]).update_attribute(permissions: 2)
    flash[:success] = "User is now moderator"
    redirect_to users_url
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :image_url)
    end

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
    def admin_user
      redirect_to(root_url) unless current_user.permissions == 3
    end
end
