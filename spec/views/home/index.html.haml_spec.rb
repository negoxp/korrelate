require 'spec_helper'

describe "home/index" do
  #pending "add some examples to (or delete) #{__FILE__}"

  it "Must include tab Fernando" do
  	render
  	expect(rendered).to include("Data")
  end

end
