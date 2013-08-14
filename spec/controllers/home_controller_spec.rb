require 'spec_helper'

describe HomeController do
	describe "GET #index" do
		it "responds successfully with an HTTP 200 status code" do
			get :index
			expect(response).to be_success
			expect(response.status).to eq(200)
			
		end
	end


  describe "Comming Ajax respond" do
    it "should be successful" do
      post :comming, :params => {:tab => 'title', :subtab => 'title'}
      #response.should be_success
    end

    #response.should render_template(:js => "generate")
  end




end
