class TripsController < ApplicationController
  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save!
      redirect_to account_path
    else
      render :new
    end
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update
      redirect_to account_path
    else
      render :edit
    end
  end

  def index
    @trip = Trip.all.sort_by(&:start_date)
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to account_path
  end

  private

  def trip_params
    params.require(:trip).permit(:country, :region, :budget, :start_date, :duration, :activity_type, :user_id)
  end
end
