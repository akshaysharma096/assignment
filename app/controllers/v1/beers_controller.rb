module V1
  class BeersController < APIController
    before_action :set_beer, only: [:show]

    # GET /beers
    # GET /beers.json
    def index
      @beers = Beer.all

      render json: @beers
    end

    # GET /beers/:beer_type
    # GET /beers/:beer_type.json
    def show
      render json: @beer
    end

    private

    def set_beer
      @beer = Beer.find_by(beer_type: params[:beer_type])
      record_not_found unless @beer
    end
  end

end
