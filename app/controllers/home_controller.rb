class HomeController < ApplicationController

  #ajax return function to show data content
  def comming
    #render text: "#{params[:tab].titleize}-#{params[:subtab].titleize}" 
    render text: "#{params[:tab]}-#{params[:subtab]}" 
  end

  def index
  end

end
