module HelperMethods
  # Put helper methods you need to be available in all acceptance specs here.
	def should_be_on(path)
	  	page.current_url.should match(Regexp.new(path))
	  end

	  def should_not_be_on(path)
	  	page.current_url.should_not match(Regexp.new(path)) 
	  end


	  def should_have_errors(*messages)
	  	within(:css, "#error_explanation") do
	  		messages.each { |msg| page.should have_content(msg) }
	  	end
	  end

	  alias_method :should_have_error, :should_have_errors

	  #Selenium needed
	   def tag_click(id)
	    #For clicling on Divs, li,  etc..  not only on links or buttons
	    element = page.find(id).click
	  end 

	  #Selenium needed
	  def double_click(id)
	    element = page.find(id)
	    page.driver.browser.mouse.double_click(element.native)  
	  end 

	  #Selenium needed
	  def accept_alert
	    page.driver.browser.switch_to.alert.accept
	  end  

	  #Selenium needed
	  def dismiss_alert
	    page.driver.browser.switch_to.alert.dismiss
	  end  

	   def select2(text, options)                                           
	      page.find("#s2id_#{options[:from]} a").click                              
	      page.all("ul.select2-results li").each do |e|                             
	        if e.text == text                                                       
	          e.click                                                               
	          return                                                                
	        end                                                                     
	      end                                                                       
	    end


	   def select2_has_selected?(options)                                           
	      page.find("#s2id_#{options[:from]} span", :text=> options[:selected])                                                                                                     
	    end 


	  def fill_the_following(fields={})
	  	fields.each do |field, value|
	  		fill_in field,  :with => value
	  	end
	  end

	  def should_have_the_following(*contents)
	  	contents.each do |content|
	  		page.should have_content(content)
	  	end
	  end

	  def should_have_table(table_name, *rows)
	  	within(table_name) do
	  		rows.each do |columns|
	  			columns.each { |content| page.should have_content(content) }
	  		end
	  	end
	  end
end

RSpec.configuration.include HelperMethods, :type => :acceptance