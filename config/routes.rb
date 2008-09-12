ActionController::Routing::Routes.draw do |map|
  # Resources
  map.resources *%w(emails phones people)

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => "people"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
