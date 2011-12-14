Fancybox Plugin for Wheelhouse CMS
==================================

This gem allows you to easily integrate the [Fancybox](http://fancybox.net/) lightbox into your Wheelhouse CMS templates.

Installation & Usage
--------------------

**1. Add `wheelhouse-fancybox` to your Gemfile:**

    gem "wheelhouse-fancybox"

Then run `bundle install`.
  
**2. Include the helper in your template:**

    <%= link image("thumbnail-1.jpg"), image_path("large-1.jpg"), :rel => "fancybox" %>
    <%= link image("thumbnail-2.jpg"), image_path("large-2.jpg"), :rel => "fancybox" %>
    <%= link image("thumbnail-3.jpg"), image_path("large-3.jpg"), :rel => "fancybox" %>
    
    <%= fancybox("a[rel='fancybox']", "titleShow" => false) %> 
