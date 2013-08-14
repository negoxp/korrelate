class HomeController < ApplicationController

  #ajax return function to show data content
  def comming
    #render text: "#{params[:tab].titleize}-#{params[:subtab].titleize}" 
    render text: "#{params[:tab]}-#{params[:subtab]}" 
  end

  def index
    require 'calculate_adjustment'
    calc=CalculateAdjustment.new :type=> :event , :year => 2013, :month => 8, :attribution => 4 , :report => 2
    @purchase, @impressions=calc.get_data

  end

end
