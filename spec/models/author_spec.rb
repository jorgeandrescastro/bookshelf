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

  describe "Basic Functionality" do
    context "Assignment of authors" do
      it "should return the correct books" do
        @author.save    
        game1 = FactoryGirl.create(:book, author_id: @author.id)
        game2 = FactoryGirl.create(:book_2)

        expect(@author.books).to include(game1)
        expect(@author.books).not_to include(game2)
      end
    end
  end

end