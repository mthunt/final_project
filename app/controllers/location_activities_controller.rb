class LocationActivitiesController < ApplicationController
  def index
    @q = LocationActivity.ransack(params[:q])
    @location_activities = @q.result(:distinct => true).includes(:city, :feature).page(params[:page]).per(10)

    render("location_activities/index.html.erb")
  end

  def show
    @location_activity = LocationActivity.find(params[:id])

    render("location_activities/show.html.erb")
  end

  def new
    @location_activity = LocationActivity.new

    render("location_activities/new.html.erb")
  end

  def create
    @location_activity = LocationActivity.new

    @location_activity.city_id = params[:city_id]
    @location_activity.activity_id = params[:activity_id]
    @location_activity.feature_rating = params[:feature_rating]

    save_status = @location_activity.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/location_activities/new", "/create_location_activity"
        redirect_to("/location_activities")
      else
        redirect_back(:fallback_location => "/", :notice => "Location activity created successfully.")
      end
    else
      render("location_activities/new.html.erb")
    end
  end

  def edit
    @location_activity = LocationActivity.find(params[:id])

    render("location_activities/edit.html.erb")
  end

  def update
    @location_activity = LocationActivity.find(params[:id])

    @location_activity.city_id = params[:city_id]
    @location_activity.activity_id = params[:activity_id]
    @location_activity.feature_rating = params[:feature_rating]

    save_status = @location_activity.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/location_activities/#{@location_activity.id}/edit", "/update_location_activity"
        redirect_to("/location_activities/#{@location_activity.id}", :notice => "Location activity updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Location activity updated successfully.")
      end
    else
      render("location_activities/edit.html.erb")
    end
  end

  def destroy
    @location_activity = LocationActivity.find(params[:id])

    @location_activity.destroy

    if URI(request.referer).path == "/location_activities/#{@location_activity.id}"
      redirect_to("/", :notice => "Location activity deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Location activity deleted.")
    end
  end
end
