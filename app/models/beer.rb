class Beer < ActiveRecord::Base

  #validations
  validates :aroma, :flavour, :kilo_calories, :abv, :abw, :mouth_feel, presence: true
  validates :beer_type, uniqueness: {case_sensitive: false}, presence: true


  #callbacks
  before_save :ensure_no_spaces


  def to_param
    beer_type.parameterize
  end

  protected
  def ensure_no_spaces
    self.beer_type = beer_type.split(' ').join('_').downcase
  end

end
