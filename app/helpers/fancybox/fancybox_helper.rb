module Fancybox::FancyboxHelper
  def fancybox(selector, options={})
    unless @_fancybox_assets_included
      concat fancybox_assets
      @_fancybox_assets_included = true
    end
    
    javascript_tag <<-EOJS
      $(function() {
        $('#{selector}').fancybox(#{options.to_json});
      });
    EOJS
  end
  
  def fancybox_assets(options={})
    plugin_assets {
      result = []
      
      result << stylesheet("fancybox/jquery.fancybox.css")
      result << javascript("fancybox/jquery.fancybox.js")
      result << javascript("fancybox/jquery.mousewheel.js") if options[:mousewheel]
      result << javascript("fancybox/jquery.easing.js") if options[:easing]
      
      safe_join(result, "\n")
    }
  end
end
