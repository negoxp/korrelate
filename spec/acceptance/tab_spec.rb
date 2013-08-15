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