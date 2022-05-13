Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :hitherencounters
      resources :downfallcitizens
      resources :initiative
    end
  end
end

