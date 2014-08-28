require 'spec_helper'
require 'rails_helper'

describe Language do

  before(:each) do
    @language = FactoryGirl.build(:language)
  end
  
  it "can be instantiated" do
    expect(Language.new).to be_an_instance_of(Language)
  end

  describe "Basic Validations" do
    it "must be valid" do
      expect(@language).to be_valid
    end

    [:name].each do |attr|
      it "must have a #{attr}" do
        @language.send("#{attr}=", nil)
        expect(@language).not_to be_valid
      end
    end

  end

end