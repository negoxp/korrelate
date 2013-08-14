class HomeController < ApplicationController

  #ajax return function to show data content
  def comming
    #render text: "#{params[:tab].titleize}-#{params[:subtab].titleize}" 
    render text: "#{params[:tab]}-#{params[:subtab]}" 
  end

  def index
  end

  def calculateadjustment
  	
  	@purchaseEvent=params[:purchaseEvent]
  	startMonth=Time.new(params[:yearSelected], params[:monthSelected], "01")

  	if @purchaseEvent== "Purchase"	
  		#Purchases == (Start Month) through (Start Month + (Report Window – 1))
  		monthend = startMonth + (params[:report].to_i - 1).months
		@purchases = startMonth.strftime("%B %Y") +" through " + monthend.strftime("%B %Y")
		
		#Impressions == (Start Month – Attribution Window) through (Start Month + (Report Window -1 ))
		monthbegin = startMonth - (params[:attribution].to_i).months
		monthend = 	startMonth + (params[:report].to_i - 1).months
		@impressions = monthbegin.strftime("%B %Y") +" through " + monthend.strftime("%B %Y")
  	else
  		#Purchases == (Start Month) through (Start Month + (Attribution Window -1 ))
  		monthend = startMonth + (params[:attribution].to_i - 1).months
		@purchases = startMonth.strftime("%B %Y") +" through " + monthend.strftime("%B %Y")
		 
  		#Impressions == (Start Month) through (Start Month + (Report Window – 1))
  		monthend = startMonth + (params[:report].to_i - 1).months
		@impressions = startMonth.strftime("%B %Y") + " through " + monthend.strftime("%B %Y")
  	end

  	render :layout => false
  end	

end
