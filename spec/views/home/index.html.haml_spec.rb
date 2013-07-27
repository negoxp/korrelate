require 'spec_helper'

describe "home/index" do
  #pending "add some examples to (or delete) #{__FILE__}"

  it "Must include tab Dashboard" do
  	render
  	expect(rendered).to include("Dashboard")
  end


  

end
