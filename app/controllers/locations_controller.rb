class LocationsController < ApplicationController
  before_action :set_location, only: %i(edit update destroy)

  def create
    @location = current_user.locations.new(permitted_location_params)
    call_method
    if @location.save
      LocationMailer.create_location(@location, current_user).deliver_now
      redirect_to locations_path, notice: 'Location was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    if @location.update(permitted_location_params)
      flash[:notice] = 'Location was successfully updated.'
      redirect_to locations_path
    else
      render :edit
    end
  end

  def destroy
    @location.destroy
    redirect_to locations_url, notice: 'Location was successfully destroyed.'
  end

  def new
    @location = Location.new
  end

  def index
    @locations = Location.all
  end

  def call_method
    puts "fssdfdsgd"
  end

  private

  def set_location
    @location = Location.find_by(params[:id])
  end

  def permitted_location_params
    params.require(:location).permit(:id, :loc_name, :city, :state, :zipcode)
  end
end
