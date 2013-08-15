
require 'calculate_adjustment'

describe CalculateAdjustment do

	context 'Test Purchase Scenario ' do
	  let(:type) { 'Purchase' }
	  let(:year) { 2013 }
	  let(:month) { 6 }
	  let(:attribution) { 3 }
	  let(:report) { 2 }

	  subject { CalculateAdjustment.new :type=> type , :year => year, :month => month, :attribution => attribution , :report => report }

	  its(:type)    { should == type }
	  its(:year) { should == year }
	  its(:month)    { should == month }
	  its(:attribution)    { should == attribution }
	  its(:report)    { should == report }
	  its(:date)    { should == Date.new(year, month) }
	  its(:set_purchases)    { should == "June 2013 through July 2013"  }
	  its(:set_impressions)    { should == "March 2013 through July 2013"  }
	  its(:get_data)    { should == ["June 2013 through July 2013", "March 2013 through July 2013"]  }
	end  

	context 'Test Event Scenario ' do
	  let(:type) { 'Event' }
	  let(:year) { 2013 }
	  let(:month) { 6 }
	  let(:attribution) { 3 }
	  let(:report) { 2 }

	  subject { CalculateAdjustment.new :type=> type , :year => year, :month => month, :attribution => attribution , :report => report }
	
	  its(:set_purchases)    { should == "June 2013 through August 2013"  }
	  its(:set_impressions)    { should == "June 2013 through July 2013"  }
	  its(:get_data)    { should == ["June 2013 through August 2013", "June 2013 through July 2013"]  }
      

      it :display_date do
       obj=CalculateAdjustment.new :type=> type , :year => year, :month => month, :attribution => attribution , :report => report 
       obj.display_date(obj.date).should == "June 2013" 
      end

	end  
		  
  
end