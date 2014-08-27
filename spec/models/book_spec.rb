require 'spec_helper'
require 'rails_helper'

describe Book do

  before(:each) do
    @book = FactoryGirl.build(:book)
  end
  
  it "can be instantiated" do
      expect(Book.new).not_to be_an_instance_of(Author)
  end

  describe "Basic Validations" do
    it "must be valid" do
      expect(@book).to be_valid
    end

    [:name, :description, :isbn, :published_year, :author_id, :image, :language_id].each do |attr|
      it "must have a #{attr}" do
        @book.send("#{attr}=", nil)
        expect(@book).not_to be_valid
      end
    end
  end

end