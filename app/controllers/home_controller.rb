class HomeController < ApplicationController

  def comming
    render text: "#{params[:tab].titleize}-#{params[:subtab].titleize}"
  end



  def index

    @unique_id = 1

    fields = { 

      advertiser:   { input_type: :checkbox, input_checked: :checked }, 
      campaign:     { input_type: :checkbox, input_checked: :checked }, 
      site:         { input_type: :checkbox, input_checked: false }, 
      placement:    { input_type: :checkbox, input_checked: false }, 
      online:       { input_type: :select,  input_options: [ 'Online Attribute', 'Online Attribute', 'Online Attribute' ] }
    }
    
    subtabs = {

      impressions:    fields,
      actions:        fields.deep_dup,
      view_actions:    fields.deep_dup,
      engagements:    fields.deep_dup,
      clicks:         fields.deep_dup
    }

    @tabs = {

      dashboard:    subtabs,
      results:      subtabs.deep_dup, 
      optimization: subtabs.deep_dup, 
      trends:       subtabs.deep_dup, 
      audience:     subtabs.deep_dup, 
      delivery:     subtabs.deep_dup
    }

    #Tab audience is diffrent
    @tabs[:audience][:impressions].delete(:online)
    @tabs[:audience][:impressions][:optimization]   = { input_type: :select, input_options: ['Optimization Target', 'Optimization Target', 'Optimization Target' ] }
    @tabs[:audience][:impressions][:browser]        = { input_type: :select, input_options: ['Browser Atttibute', 'Browser Atttibute', 'Browser Atttibute' ] }

  end

end
