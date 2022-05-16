Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      map.resources :hitherencounters
      map.resources :downfallcitizens
      map.resources :initiatives
    end
  end
end

