class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def create
    @friend = Friend.new(params_friend)

    if @friend.save
      redirect_to friends_path
    else
      render :new
    end
  end

  def update
    @friend = Friend.find(params[:id])

    if @friend.update_attributes(params_friend)
      redirect_to friends_path
    else
      render :edit
    end
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def new
    @friend = Friend.new
  end

  private

  def params_friend
    params.require(:friend).permit(:name, :zip_code, :address, :neighborhood, :number, :city, :state)
  end
end
