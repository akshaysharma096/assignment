require 'rails_helper'

RSpec.describe Beer, type: :model do

  subject { create(:beer) }

  context 'Field validations' do

    it { should validate_presence_of(:beer_type) }
    it { should validate_presence_of(:aroma) }
    it { should validate_presence_of(:mouth_feel) }
    it { should validate_presence_of(:abv) }
    it { should validate_presence_of(:abw) }
    it { should validate_presence_of(:flavour) }
    it { should validate_presence_of(:kilo_calories) }

  end

  context 'Valid model functions' do

    it 'validates to_param function' do
      expect(subject.to_param).to eq subject.beer_type
    end

  end


  context 'Save validations' do

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is invalid without a :beer_type' do
      subject.beer_type = nil
      expect(subject).not_to be_valid
    end

    it 'is invalid without aroma' do
      subject.aroma = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without mouth_feel' do
      subject.aroma = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without abv' do
      subject.abv= nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without abw' do
      subject.abw = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without flavour' do
      subject.flavour = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without kilo_calories' do
      subject.kilo_calories = nil
      expect(subject).not_to be_valid
    end

  end
end
