class MypagesController < ApplicationController
  before_action :set_user, only: %i[show edit update]
  def show; end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to mypage_path, notice: "Profile updated!"
    else
      flash.now[:alert] = "Profile can't update."
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name,:email, :profile)
  end

  def set_user
    @user = User.find(current_user.id)
  end
end
