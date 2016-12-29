class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :beer_type
      t.string :aroma
      t.float :kilo_calories
      t.float :abv
      t.float :abw
      t.string :flavour
      t.string :mouth_feel

      t.timestamps null: false
    end
  end
end
