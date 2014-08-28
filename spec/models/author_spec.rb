require 'spec_helper'
require 'rails_helper'

describe Author do

  before(:each) do
    @author = FactoryGirl.build(:author)
  end
  
  it "can be instantiated" do
    expect(Author.new).to be_an_instance_of(Author)
  end

  describe "Basic Validations" do
    it "must be valid" do
      expect(@author).to be_valid
    end

    [:name, :biography, :birth_country, :birth_year].each do |attr|
      it "must have a #{attr}" do
        @author.send("#{attr}=", nil)
        expect(@author).not_to be_valid
      end
    end

  end

end