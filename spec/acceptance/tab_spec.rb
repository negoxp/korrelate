require 'acceptance/acceptance_helper'


feature 'Tab', %q{ 
	Working with home page
	I want try test tab behavior
	}do

	scenario 'Click on Delivery must show own tab and hidden others', :js=>true do
		visit '/'
	  	click_link 'Delivery'
	  	sleep 3
	  	find '#tab-delivery[aria-hidden=false]'
	  	find '#tab-dashboard[aria-hidden=true]'
	end


	scenario 'Click on Audience must show Optimization & Browser (select input) without Online input text', :js=>true do
		visit '/'
	  	click_link 'Audience'	  

	  	within('#tab-audience') do
	  		click_link 'Impressions'
			within('#tab-audience-impressions') do
				find '[name=optimization]'
				find '[name=browser]'
				page.should have_no_selector '[name=online]'
			end
		end
	end


	scenario 'Click on Dashboard should not show Optimization Target (select input)', :js=>true do
		visit '/'
	  	click_link 'Dashboard'
	  	
	  	within('#tab-dashboard') do
	  		click_link 'Impressions'
			within('#tab-dashboard-impressions') do
                page.should have_no_selector '[name=optimization]'
			end
		end
	end


end