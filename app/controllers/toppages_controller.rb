class ToppagesController < ApplicationController
  def index
    @user = User.new
    @pagy, @users = pagy(User.order(id: :desc), items: 25)
  end
end
