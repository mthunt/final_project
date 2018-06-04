class LocationGeographiesController < ApplicationController
  def index
    @location_geographies = LocationGeography.all

    render("location_geographies/index.html.erb")
  end

  def show
    @location_geography = LocationGeography.find(params[:id])

    render("location_geographies/show.html.erb")
  end

  def new
    @location_geography = LocationGeography.new

    render("location_geographies/new.html.erb")
  end

  def create
    @location_geography = LocationGeography.new

    @location_geography.geography_id = params[:geography_id]
    @location_geography.location_id = params[:location_id]

    save_status = @location_geography.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/location_geographies/new", "/create_location_geography"
        redirect_to("/location_geographies")
      else
        redirect_back(:fallback_location => "/", :notice => "Location geography created successfully.")
      end
    else
      render("location_geographies/new.html.erb")
    end
  end

  def edit
    @location_geography = LocationGeography.find(params[:id])

    render("location_geographies/edit.html.erb")
  end

  def update
    @location_geography = LocationGeography.find(params[:id])

    @location_geography.geography_id = params[:geography_id]
    @location_geography.location_id = params[:location_id]

    save_status = @location_geography.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/location_geographies/#{@location_geography.id}/edit", "/update_location_geography"
        redirect_to("/location_geographies/#{@location_geography.id}", :notice => "Location geography updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Location geography updated successfully.")
      end
    else
      render("location_geographies/edit.html.erb")
    end
  end

  def destroy
    @location_geography = LocationGeography.find(params[:id])

    @location_geography.destroy

    if URI(request.referer).path == "/location_geographies/#{@location_geography.id}"
      redirect_to("/", :notice => "Location geography deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Location geography deleted.")
    end
  end
end
