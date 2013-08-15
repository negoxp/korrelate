require 'spec_helper'

describe HomeController do
	context "GET #index" do
		it "responds successfully with an HTTP 200 status code" do
			get :index
			expect(response).to be_success
			expect(response.status).to eq(200)
			expect(response).to render_template("index")
			
		end
	end


	context "Comming Ajax respond" do
		before do
			post :comming, {:tab => 'title', :subtab => 'title'}
		end	
		it "should be successful" do
		  expect(response).to be_success
		end

		it "Should render Text" do
			response.should render_template(:text => "title-title")  
		end	

	end


   context "Calculate Adjustment as Purchase Month" do
   		before do
			get :calculate_adjustment,{:purchaseEvent=> 'Purchase' , :yearSelected => 2013, :monthSelected => 6, :attribution => 3 , :report => 2}
		end

		it "should be successful" do
		  expect(response).to be_success
		end

		it "Should not render layout" do 
			response.should render_template(:layout => false)
		end	

		it "assing variables as Purchase Example" do 
			expect(assigns(:purchases)).to eq("June 2013 through July 2013")
			expect(assigns(:impressions)).to eq("March 2013 through July 2013")
			expect(assigns(:purchaseEvent)).to eq("Purchase Month")
		end	

   end


   context "Calculate Adjustment as Purchase Month" do
   		before do
			get :calculate_adjustment,{:purchaseEvent=> 'Event' , :yearSelected => 2013, :monthSelected => 6, :attribution => 3 , :report => 2}
		end


		it "assing variables as Purchase Example" do 
			expect(assigns(:purchases)).to eq("June 2013 through August 2013")
			expect(assigns(:impressions)).to eq("June 2013 through July 2013")
			expect(assigns(:purchaseEvent)).to eq("Event Month")
		end	

   end	

end
