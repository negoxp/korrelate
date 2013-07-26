class HomeController < ApplicationController

  #ajax return function to show data content
  def comming
    render text: "#{params[:tab].titleize}-#{params[:subtab].titleize}"
  end

  def index
  end

end
