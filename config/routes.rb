Rails.application.routes.draw do
  # Routes for the Location_geography resource:
  # CREATE
  get "/location_geographies/new", :controller => "location_geographies", :action => "new"
  post "/create_location_geography", :controller => "location_geographies", :action => "create"

  # READ
  get "/location_geographies", :controller => "location_geographies", :action => "index"
  get "/location_geographies/:id", :controller => "location_geographies", :action => "show"

  # UPDATE
  get "/location_geographies/:id/edit", :controller => "location_geographies", :action => "edit"
  post "/update_location_geography/:id", :controller => "location_geographies", :action => "update"

  # DELETE
  get "/delete_location_geography/:id", :controller => "location_geographies", :action => "destroy"
  #------------------------------

  # Routes for the Geography resource:
  # CREATE
  get "/geographies/new", :controller => "geographies", :action => "new"
  post "/create_geography", :controller => "geographies", :action => "create"

  # READ
  get "/geographies", :controller => "geographies", :action => "index"
  get "/geographies/:id", :controller => "geographies", :action => "show"

  # UPDATE
  get "/geographies/:id/edit", :controller => "geographies", :action => "edit"
  post "/update_geography/:id", :controller => "geographies", :action => "update"

  # DELETE
  get "/delete_geography/:id", :controller => "geographies", :action => "destroy"
  #------------------------------

  # Routes for the Activity resource:
  # CREATE
  get "/activities/new", :controller => "activities", :action => "new"
  post "/create_activity", :controller => "activities", :action => "create"

  # READ
  get "/activities", :controller => "activities", :action => "index"
  get "/activities/:id", :controller => "activities", :action => "show"

  # UPDATE
  get "/activities/:id/edit", :controller => "activities", :action => "edit"
  post "/update_activity/:id", :controller => "activities", :action => "update"

  # DELETE
  get "/delete_activity/:id", :controller => "activities", :action => "destroy"
  #------------------------------

  # Routes for the Location_activity resource:
  # CREATE
  get "/location_activities/new", :controller => "location_activities", :action => "new"
  post "/create_location_activity", :controller => "location_activities", :action => "create"

  # READ
  get "/location_activities", :controller => "location_activities", :action => "index"
  get "/location_activities/:id", :controller => "location_activities", :action => "show"

  # UPDATE
  get "/location_activities/:id/edit", :controller => "location_activities", :action => "edit"
  post "/update_location_activity/:id", :controller => "location_activities", :action => "update"

  # DELETE
  get "/delete_location_activity/:id", :controller => "location_activities", :action => "destroy"
  #------------------------------

  # Routes for the Location_weather resource:
  # CREATE
  get "/location_weathers/new", :controller => "location_weathers", :action => "new"
  post "/create_location_weather", :controller => "location_weathers", :action => "create"

  # READ
  get "/location_weathers", :controller => "location_weathers", :action => "index"
  get "/location_weathers/:id", :controller => "location_weathers", :action => "show"

  # UPDATE
  get "/location_weathers/:id/edit", :controller => "location_weathers", :action => "edit"
  post "/update_location_weather/:id", :controller => "location_weathers", :action => "update"

  # DELETE
  get "/delete_location_weather/:id", :controller => "location_weathers", :action => "destroy"
  #------------------------------

  # Routes for the Location resource:
  # CREATE
  get "/locations/new", :controller => "locations", :action => "new"
  post "/create_location", :controller => "locations", :action => "create"

  # READ
  get "/locations", :controller => "locations", :action => "index"
  get "/locations/:id", :controller => "locations", :action => "show"

  # UPDATE
  get "/locations/:id/edit", :controller => "locations", :action => "edit"
  post "/update_location/:id", :controller => "locations", :action => "update"

  # DELETE
  get "/delete_location/:id", :controller => "locations", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
