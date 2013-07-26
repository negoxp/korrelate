
    #definition of tabs, fields an options
    fields = { 

      advertiser:   { input_type: :checkbox, input_checked: :checked }, 
      campaign:     { input_type: :checkbox, input_checked: :checked, show_icon: true }, 
      site:         { input_type: :checkbox, input_checked: false,    show_icon: true }, 
      placement:    { input_type: :checkbox, input_checked: false,    show_icon: true }, 
      online:       { input_type: :select,  input_options: [ 'Online Attribute', 'Online Attribute', 'Online Attribute' ] }
    }
    
    subtabs = {

      impressions:    fields,
      actions:        fields.deep_dup,
      view_actions:   fields.deep_dup,
      engagements:    fields.deep_dup,
      clicks:         fields.deep_dup
    }

    TABS = {

      dashboard:    subtabs,
      results:      subtabs.deep_dup, 
      optimization: subtabs.deep_dup, 
      trends:       subtabs.deep_dup, 
      audience:     subtabs.deep_dup, 
      delivery:     subtabs.deep_dup
    }

    #Tab audience is diffrent
    TABS[:audience][:impressions].delete(:online)
    TABS[:audience][:impressions][:site]           = { input_type: :checkbox, input_checked: true,    show_icon: true }
    TABS[:audience][:impressions][:placement]      = { input_type: :checkbox, input_checked: true,    show_icon: true }
    TABS[:audience][:impressions][:optimization]   = { input_type: :select, input_options: ['Optimization Target', 'Optimization Target', 'Optimization Target' ] }
    TABS[:audience][:impressions][:browser]        = { input_type: :select, input_options: ['Browser Atttibute', 'Browser Atttibute', 'Browser Atttibute' ] }
