Rails.application.routes.draw do
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
