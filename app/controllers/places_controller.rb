class PlacesController < ApplicationController

  def index
    @place = Place.where({ "user_id" => session["user_id"] })
  end

  def show
    @place = Place.find_by({ "id" => params["id"] })
    @entries = Entry.where({ "place_id" => @place["id"]})
    
  end

  def new
    @place = Place.new
  end

  def create
    if User.find_by({ "id" => session["user_id"] }) != nil
    @place = Place.new
    @place["name"] = params["name"]
    @place["user_id"] = session["user_id"]
    @place.save
    redirect_to "/places"
  end
end
end
