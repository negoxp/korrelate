require 'acceptance/acceptance_helper'


feature 'Content', %q{ 
	Working with home page
	I want try test tab content
	}do

	scenario 'Check controlls on Impressions', :js=>true do
		visit "/"
	  	click_link 'Dashboard'
	  	sleep 3
	  	within('#tab-dashboard') do
	  		click_link 'Impressions'
	  		within('#tab-dashboard-impressions') do
	  			find '[value=Advertiser]'
	  			find '[value=Campaign]'
	  			find '[value=Site]'
	  			find '[value=Placement]'
	  		end
	  	end	
	end

	scenario 'Check controlls on Actions', :js=>true do
		visit "/"
	  	click_link 'Dashboard'
	  	sleep 3
	  	within('#tab-dashboard') do
	  		#click_link 'Actions'
	  		find('.actions').click
	  		within('#tab-dashboard-actions') do
	  			find '[value=Advertiser]'
	  			find '[value=Pixel]'
	  		end
	  	end	
	end

	scenario 'Check controlls on View-Actions', :js=>true do
		visit "/"
	  	click_link 'Dashboard'
	  	sleep 3
	  	within('#tab-dashboard') do
	  		#click_link 'view actions'
	  		find('.view_actions').click
	  		within('#tab-dashboard-view_actions') do
	  			find '[value=Advertiser]'
	  		end
	  	end	
	end

	scenario 'Check controlls on Engagements', :js=>true do
		visit "/"
	  	click_link 'Dashboard'
	  	sleep 3
	  	within('#tab-dashboard') do
	  		click_link 'Engagements'
	  		within('#tab-dashboard-engagements') do
	  			find '[value=Advertiser]'
	  			find '[value=Campaign]'
	  			find '[value=Site]'
	  			find '[value=Placement]'
	  		end
	  	end	
	end

	scenario 'Check controlls on Clicks', :js=>true do
		visit "/"
	  	click_link 'Dashboard'
	  	sleep 3
	  	within('#tab-dashboard') do
	  		click_link 'Clicks'
	  		within('#tab-dashboard-clicks') do
	  			find '[value=Advertiser]'
	  			find '[value=Campaign]'
	  			find '[value=Site]'
	  			find '[value=Placement]'
	  		end
	  	end	
	end

end