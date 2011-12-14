Gem::Specification.new do |s|
  s.name        = "wheelhouse-fancybox"
  s.platform    = Gem::Platform::RUBY
  s.version     = "1.3.4"

  s.required_ruby_version     = ">= 1.8.7"
  s.required_rubygems_version = ">= 1.3.6"
  
  s.summary     = "Fancybox support for Wheelhouse CMS"
  s.description = "Fancybox (fancybox.net) packaged for use in Wheelhouse CMS themes."
  s.author      = "Sam Pohlenz"
  s.email       = "info@wheelhousecms.com"
  s.homepage    = "https://www.wheelhousecms.com"
  
  s.files        = Dir["{app,lib,vendor}/**/*", "README.md"]
  s.require_path = "lib"
  
  s.add_dependency("wheelhouse", "~> 1.0")
end
