class BeerSerializer < ActiveModel::Serializer
  type 'beers'
  attributes :beer_type, :aroma, :kilo_calories, :abv, :abw, :flavour, :mouth_feel

  link :self do
    href v1_beer_path(object)
  end

end
