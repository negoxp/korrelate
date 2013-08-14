
    #definition of tabs, fields an options
    fields_impressions = { 
      advertiser:   { input_type: :checkbox, input_checked: :checked }, 
      campaign:     { input_type: :checkbox, input_checked: :checked, show_icon: true }, 
      site:         { input_type: :checkbox, input_checked: false,    show_icon: true }, 
      placement:    { input_type: :checkbox, input_checked: false,    show_icon: true }, 
      online:       { input_type: :select,  input_options: [ 'Creative', 'Key-Value1', 'Key-Value2', 'Key-Value3', 'Key-Value4', 'Key-Value5', 'Key- Value6', 'Key-Value7', 'Key-Value8', 'Key-Value9', 'Operating System', 'Browser', 'Time of Day', 'Frequency']}
    }
    #'Creative', 'Key-Value1', 'Key-Value2', 'Key-Value3', 'Key-Value4', 'Key-Value5', 'Key- Value6', 'Key-Value7', 'Key-Value8', 'Key-Value9', 'Operating System', 'Browser', 'Time of Day', 'Frequency'

    fields_actions = { 
      advertiser:   { input_type: :checkbox, input_checked: :checked }, 
      pixel:        { input_type: :checkbox, input_checked: :checked, show_icon: true }, 
      online:       { input_type: :select,  input_options: [ 'Pixel', 'Key-Value1', 'Key-Value2', 'Key- Value3', 'Key-Value4', 'Key-Value5', 'Key-Value6', 'Key-Value7', 'Key-Value8', 'Key-Value9', 'Operating System', 'Browser' ] }
    }

    #'Pixel', 'Key-Value1', 'Key-Value2', 'Key- Value3', 'Key-Value4', 'Key-Value5', 'Key-Value6', 'Key-Value7', 'Key-Value8', 'Key-Value9', 'Operating System', 'Browser'

    fields_view_actions = { 
      advertiser:   { input_type: :checkbox, input_checked: :checked }, 
      #online:       { input_type: :select,  input_options: [ 'Pixel', 'Online Attribute', 'Online Attribute' ] }
    }

    fields_engagements = { 
      advertiser:   { input_type: :checkbox, input_checked: :checked }, 
      campaign:     { input_type: :checkbox, input_checked: :checked, show_icon: true }, 
      site:         { input_type: :checkbox, input_checked: false,    show_icon: true }, 
      placement:    { input_type: :checkbox, input_checked: false,    show_icon: true }, 
      online:       { input_type: :select,  input_options: [ 'Creative', 'Key-Value1', 'Key-Value2', 'Key-Value3', 'Key-Value4', 'Key-Value5', 'Key- Value6', 'Key-Value7', 'Key-Value8', 'Key-Value9', 'Operating System', 'Browser', 'Time of Day', 'Frequency' ] }
    }
    #'Creative', 'Key-Value1', 'Key-Value2', 'Key-Value3', 'Key-Value4', 'Key-Value5', 'Key- Value6', 'Key-Value7', 'Key-Value8', 'Key-Value9', 'Operating System', 'Browser', 'Time of Day', 'Frequency'

    fields_clicks = { 
      advertiser:   { input_type: :checkbox, input_checked: :checked }, 
      campaign:     { input_type: :checkbox, input_checked: :checked, show_icon: true }, 
      site:         { input_type: :checkbox, input_checked: false,    show_icon: true }, 
      placement:    { input_type: :checkbox, input_checked: false,    show_icon: true }, 
      online:       { input_type: :select,  input_options: [ 'Creative', 'Key-Value1', 'Key-Value2', 'Key-Value3', 'Key-Value4', 'Key-Value5', 'Key- Value6', 'Key-Value7', 'Key-Value8', 'Key-Value9', 'Operating System', 'Browser', 'Time of Day', 'Frequency' ] }
    }

    fields = { 
      advertiser:   { input_type: :checkbox, input_checked: :checked }, 
      campaign:     { input_type: :checkbox, input_checked: :checked, show_icon: true }, 
      site:         { input_type: :checkbox, input_checked: false,    show_icon: true }, 
      placement:    { input_type: :checkbox, input_checked: false,    show_icon: true }, 
      online:       { input_type: :select,  input_options: [ 'Online Attribute', 'Online Attribute', 'Online Attribute' ] }
    }
    
    subtabs = {
      impressions:    fields_impressions,
      actions:        fields_actions,
      view_actions:   fields_view_actions, 
      engagements:    fields_engagements,
      clicks:         fields_clicks
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
    #TABS[:audience][:impressions].delete(:online)
    #TABS[:audience][:impressions][:site]           = { input_type: :checkbox, input_checked: true,    show_icon: true }
    #TABS[:audience][:impressions][:placement]      = { input_type: :checkbox, input_checked: true,    show_icon: true }
    #TABS[:audience][:impressions][:optimization]   = { input_type: :select, input_options: ['Optimization Target', 'Optimization Target', 'Optimization Target' ] }
    #TABS[:audience][:impressions][:browser]        = { input_type: :select, input_options: ['Browser Atttibute', 'Browser Atttibute', 'Browser Atttibute' ] }


