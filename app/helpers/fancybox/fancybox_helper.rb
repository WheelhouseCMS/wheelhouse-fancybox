module Fancybox::FancyboxHelper
  def fancybox(selector, options={})
    concat fancybox_assets unless @_fancybox_assets_included
    
    javascript_tag <<-EOJS
      $(function() {
        $('#{selector}').fancybox(#{options.to_json});
      });
    EOJS
  end
  
  def fancybox_assets(options={})
    @_fancybox_assets_included = true
    
    plugin_assets {
      concat stylesheet("fancybox/jquery.fancybox.css")
      concat javascript("fancybox/jquery.fancybox.js")
      concat javascript("fancybox/jquery.mousewheel.js") if options[:mousewheel]
      concat javascript("fancybox/jquery.easing.js") if options[:easing]
      nil
    }
  end
end
