require 'spec_helper'
require 'rails_helper'

describe Genre do

  before(:each) do
    @genre = FactoryGirl.build(:genre)
  end
  
  it "can be instantiated" do
    expect(Genre.new).to be_an_instance_of(Genre)
  end

  describe "Basic Validations" do
    it "must be valid" do
      expect(@genre).to be_valid
    end

    [:name, :description].each do |attr|
      it "must have a #{attr}" do
        @genre.send("#{attr}=", nil)
        expect(@genre).not_to be_valid
      end
    end

  end

end