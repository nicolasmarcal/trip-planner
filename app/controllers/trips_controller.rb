class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def create
    @trip = Trip.new(trip_params)

    if @trip.save
      redirect_to @trip
    else
      render action: :new
    end
  end

  def show
    @trip = Trip.find(params[:id])
    @all_friends = Friend.all
  end

  def add_friend
    @trip = Trip.find(params[:id])
    @trip.add_friends(trip_params[:friend_ids])

    redirect_to @trip
  end

  def update
    @trip = Trip.find(params[:id])

    if @trip.update_attributes(trip_params)
      redirect_to @trip
    else
      render :edit
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  private

  def trip_params
    params.require(:trip).permit(:destiny_city_name, :start_date, :end_date, friend_ids: [])
  end
end
