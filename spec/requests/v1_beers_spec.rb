require 'rails_helper'

RSpec.shared_examples 'beer json api request spec' do


  context 'content_types' do

    it 'responds with content_type, application/json' do
      expect(response.content_type).to eq 'application/json'
    end

    it 'does not respond with content_type, application/xml' do
      expect(response.content_type).not_to eq 'application/xml'
    end

    it 'does not respond with content_type, text/html' do
      expect(response.content_type).not_to eq 'text/html'
    end

    it 'does not respond with content_type, application/xhtml+xml' do
      expect(response.content_type).not_to eq 'application/xhtml+xml'
    end

  end

  context 'HTTP status codes' do

    it 'responds with status 200' do
      expect(response).to have_http_status :success
    end

    it 'does not respond with status 404' do
      expect(response).not_to have_http_status :missing
    end

  end

end

RSpec.describe 'Beers', type: :request do

  describe 'GET /beers' do

    before do
      get v1_beers_path
    end

    it_behaves_like 'beer json api request spec'

  end

  describe 'GET /beers/:beer_type' do

    let (:beer) { create(:beer) }

    before do
      get v1_beer_path(beer)
    end

    it_behaves_like 'beer json api request spec'

  end
end
