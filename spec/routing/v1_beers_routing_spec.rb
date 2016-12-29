require "rails_helper"

RSpec.describe V1::BeersController, type: :routing do
  describe 'routing' do

    context 'routes to #index' do

      let (:request_path) { v1_beers_path }

      it { should route(:get, request_path).to('v1/beers#index') }

      it { should_not route(:get, request_path).to('v1/beers#update') }

      it { should_not route(:get, request_path).to('v1/beers#delete') }
    end

    context 'routes to #show' do
      let (:beer) { create(:beer) }

      let (:request_path) { v1_beer_path(beer) }

      it { should route(:get, request_path).to('v1/beers#show', beer_type: beer.to_param) }

      it { should_not route(:get, request_path).to('v1/beers#index') }

      it { should_not route(:get, request_path).to('v1/beers#edit') }
    end

  end
end
