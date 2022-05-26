class TripsController < ApplicationController

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(strong_params)
    @trip.user = current_user
    if trip.save!
      redirect_to account_path
    else
      render :new
    end
  end

  def update
  end


  def index
  end

  def destroy
  end


end
