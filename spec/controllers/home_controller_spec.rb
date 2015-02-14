require 'spec_helper'
require 'rails_helper'

describe HomeController do

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GamesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  before do

  end

  describe "GET index" do
    it "should return a 200 response code" do
      get :index
      expect(response.code).to eq("200")
    end


  end

end
