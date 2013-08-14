class CalculateAdjustment
	attr_accessor :year, :month, :attribution, :report,  :type, :purchase, :impressions, :date

	def initialize(args)
		args.each {|k,v|
      		instance_variable_set("@#{k}", v) unless v.nil?
    	} if args.is_a? Hash

		@date = Time.new  @year, @month
		@attribution=@attribution.to_i
		@report=@report.to_i
		@purchase=self.set_purchase
		@impressions=self.set_impressions
	end	


	def set_purchase
		self.purchase= self.type == "Purchase" ? "#{display_date(self.date)} through #{display_date(self.date + (self.report - 1).months)}" : "#{display_date(self.date)} through #{display_date(self.date + (self.attribution - 1).months)}" 
	end	

	def set_impressions
		self.impressions= self.type == "Purchase" ? "#{display_date(self.date - self.attribution.months)} through #{display_date(self.date + (self.report - 1).months)}" : "#{display_date(self.date)} through #{display_date(self.date + (self.report - 1).months)}" 
	end	

	def display_date(date)
		date.strftime("%B %Y")
	end	

	def get_data
		[self.purchase,self.impressions]
	end	



end	

=begin
	
If the user has selected "Purchase Month" the results are:

Purchases == (Start Month)through (Start Month + (Report Window – 1))
Impressions == (Start Month –Attribution Window) through (Start Month + (Report 

Window -1 ))

If the user has selected "Event Month" the results are:

Purchases == (Start Month) through (Start Month + (Attribution Window -1 ))
Impressions == (Start Month) through (Start Month + (Report Window – 1))
	
=end