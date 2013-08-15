class HomeController < ApplicationController

  #ajax return function to show data content
  def comming
    #render text: "#{params[:tab].titleize}-#{params[:subtab].titleize}" 
    render text: "#{params[:tab]}-#{params[:subtab]}" 
  end

  def index
  end

  def calculate_adjustment
  	require 'calculate_adjustment'
    calc=CalculateAdjustment.new :type=> params[:purchaseEvent] , :year => params[:yearSelected], :month => params[:monthSelected], :attribution => params[:attribution] , :report => params[:report]
    @purchases, @impressions =calc.get_data
    @purchaseEvent = params[:purchaseEvent] + " Month"
  	render :layout => false
  end	

end
