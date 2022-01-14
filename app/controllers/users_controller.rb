class UsersController < ApplicationController
  
  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = '投稿に成功しました。'
      redirect_to root_url
    else
      @pagy, @users = pagy(User.order(id: :desc), items: 25)
      flash.now[:danger] = '投稿に失敗しました。'
      render 'toppages/index'
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:model, :game_id, :discord_id, :comment)
  end
end
