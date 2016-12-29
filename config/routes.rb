Rails.application.routes.draw do

  scope 'api' do
    namespace :v1 do
      resources :beers, param: :beer_type, only: [:index, :show]
    end
  end

end
