require 'spec_helper'
require 'rails_helper'

describe Book do

  before(:each) do
    @book = FactoryGirl.build(:book)
  end
  
  it "can be instantiated" do
    expect(Book.new).to be_an_instance_of(Book)
  end

  describe "Basic Validations" do
    it "must be valid" do
      expect(@book).to be_valid
    end

    [:name, :description, :isbn, :published_year, :author_id, :language_id].each do |attr|
      it "must have a #{attr}" do
        @book.send("#{attr}=", nil)
        expect(@book).not_to be_valid
      end
    end

    [:name, :isbn].each do |attr|
      it "must have an unique #{attr}" do
        @book.save
        new_book = FactoryGirl.build(:book_2)
        new_book.send("#{attr}=", @book.send("#{attr}"))
        expect(new_book).not_to be_valid
      end
    end
  end

  describe "Basic Functionality" do
    before(:each) do
      @book.save
      @latest_book = FactoryGirl.create(:book_2)
    end

    it "should return the correct latest book" do
      expect(Book.latest.first).to eq(@latest_book)
    end

    it "should return the correct amount of latest books" do
      amount_of_latest_books = 1
      expect(Book.latest(amount_of_latest_books).count).to eq(amount_of_latest_books)
    end

    it "should return the proper category names" do
      genre = FactoryGirl.build(:genre)
      expect(@book.genre_names).to include(genre.name)
    end
    
  end

  describe "Author association" do
    it "should have the correct name" do
      author = FactoryGirl.create(:author)
      @book.author = author
      expect(@book.author.name).to eq(author.name)
    end 
  end

  describe "Language association" do
    it "should have the correct name" do
      language = FactoryGirl.create(:language)
      @book.language = language
      expect(@book.language.name).to eq(language.name)
    end
  end

  describe "Genres association" do

    before(:each) do
      @genre1 = FactoryGirl.build(:genre)
      @genre2 = FactoryGirl.build(:genre, :name => "Genre 2")
      @genre3 = FactoryGirl.build(:genre, :name => "Genre 3")
      @book.genres = [@genre1, @genre3]
    end

    it "should return added genres" do
      expect(@book.genres).to eq([@genre1, @genre3])
    end

    it "should not return not added genres" do
      expect(@book.genres).not_to include(@genre2)
    end
  end

end