class LocationWeathersController < ApplicationController
  def index
    @location_weathers = LocationWeather.all

    render("location_weathers/index.html.erb")
  end

  def show
    @location_weather = LocationWeather.find(params[:id])

    render("location_weathers/show.html.erb")
  end

  def new
    @location_weather = LocationWeather.new

    render("location_weathers/new.html.erb")
  end

  def create
    @location_weather = LocationWeather.new

    @location_weather.location_id = params[:location_id]
    @location_weather.month = params[:month]
    @location_weather.temperature = params[:temperature]
    @location_weather.weather = params[:weather]

    save_status = @location_weather.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/location_weathers/new", "/create_location_weather"
        redirect_to("/location_weathers")
      else
        redirect_back(:fallback_location => "/", :notice => "Location weather created successfully.")
      end
    else
      render("location_weathers/new.html.erb")
    end
  end

  def edit
    @location_weather = LocationWeather.find(params[:id])

    render("location_weathers/edit.html.erb")
  end

  def update
    @location_weather = LocationWeather.find(params[:id])

    @location_weather.location_id = params[:location_id]
    @location_weather.month = params[:month]
    @location_weather.temperature = params[:temperature]
    @location_weather.weather = params[:weather]

    save_status = @location_weather.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/location_weathers/#{@location_weather.id}/edit", "/update_location_weather"
        redirect_to("/location_weathers/#{@location_weather.id}", :notice => "Location weather updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Location weather updated successfully.")
      end
    else
      render("location_weathers/edit.html.erb")
    end
  end

  def destroy
    @location_weather = LocationWeather.find(params[:id])

    @location_weather.destroy

    if URI(request.referer).path == "/location_weathers/#{@location_weather.id}"
      redirect_to("/", :notice => "Location weather deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Location weather deleted.")
    end
  end
end
