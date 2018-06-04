class GeographiesController < ApplicationController
  def index
    @q = Geography.ransack(params[:q])
    @geographies = @q.result(:distinct => true).includes(:location_geographies, :locations).page(params[:page]).per(10)

    render("geographies/index.html.erb")
  end

  def show
    @location_geography = LocationGeography.new
    @geography = Geography.find(params[:id])

    render("geographies/show.html.erb")
  end

  def new
    @geography = Geography.new

    render("geographies/new.html.erb")
  end

  def create
    @geography = Geography.new

    @geography.geography = params[:geography]

    save_status = @geography.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/geographies/new", "/create_geography"
        redirect_to("/geographies")
      else
        redirect_back(:fallback_location => "/", :notice => "Geography created successfully.")
      end
    else
      render("geographies/new.html.erb")
    end
  end

  def edit
    @geography = Geography.find(params[:id])

    render("geographies/edit.html.erb")
  end

  def update
    @geography = Geography.find(params[:id])

    @geography.geography = params[:geography]

    save_status = @geography.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/geographies/#{@geography.id}/edit", "/update_geography"
        redirect_to("/geographies/#{@geography.id}", :notice => "Geography updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Geography updated successfully.")
      end
    else
      render("geographies/edit.html.erb")
    end
  end

  def destroy
    @geography = Geography.find(params[:id])

    @geography.destroy

    if URI(request.referer).path == "/geographies/#{@geography.id}"
      redirect_to("/", :notice => "Geography deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Geography deleted.")
    end
  end
end
